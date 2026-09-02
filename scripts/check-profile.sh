#!/usr/bin/env bash
# Profile proof check.
#
# Static checks always run. Live checks against GitHub run when
# CHECK_LIVE_GITHUB_VISIBILITY=1 (needs `gh`). Failures accumulate so one run
# reports every defect rather than stopping at the first.
set -uo pipefail

failures=0

fail() {
  printf '  FAIL  %s\n' "$1" >&2
  failures=$((failures + 1))
}

pass() {
  printf '  ok    %s\n' "$1"
}

front_door_files=(
  "README.md"
  "public-workbench/saas-contracting-and-dpa-playbook.md"
)

# Target state: the flagship first, then the four supporting proofs.
# legal-ops-agent is archived and must not appear as a flagship or a pin.
flagship_repos=(
  "micar-whitepaper-linter"
  "legal-function-operating-system"
  "contract-review-eval-harness"
  "eu-ai-act-classifier"
  "dpa-and-data-transfer-review"
)

archived_repos=(
  "legal-ops-agent"
)

required_terms=(
  "synthetic"
  "human review"
  "source provenance"
  "audit"
  "not legal advice"
  "production deployment"
)

reject_patterns=(
  "game changer"
  "unlock"
  "transformative journey"
  "leverage synergies"
  "in today's fast-paced world"
  "ready for the future"
  "Excited to share"
  "production-grade"
  "production ready"
  "production-ready"
)

# Legal statements that were true once and are not any more.
stale_legal_patterns=(
  "provisional political agreement"
  "Annex III high-risk applies 2026-08-02"
  "high-risk applies 2026-08-02"
)

printf 'Static checks\n'

for file in "${front_door_files[@]}"; do
  [[ -f "$file" ]] || fail "missing required file: $file"
done

if grep -qnE '^(<<<<<<<|=======|>>>>>>>)' "${front_door_files[@]}" 2>/dev/null; then
  fail "merge conflict marker found"
else
  pass "no merge conflict markers"
fi

for pattern in "${reject_patterns[@]}"; do
  if grep -RIqnE -- "$pattern" "${front_door_files[@]}" 2>/dev/null; then
    fail "blocked promotional phrase: $pattern"
  fi
done
pass "promotional vocabulary screen"

for pattern in "${stale_legal_patterns[@]}"; do
  if grep -RIqn -- "$pattern" "${front_door_files[@]}" 2>/dev/null; then
    fail "stale legal-status phrase: $pattern"
  fi
done
pass "stale legal-status screen"

grep -qn $'—' "${front_door_files[@]}" && fail "em dash in front-door docs"
grep -qn $'–' "${front_door_files[@]}" && fail "en dash in front-door docs"

for repo in "${flagship_repos[@]}"; do
  grep -q -- "$repo" README.md || fail "README does not mention flagship repo: $repo"
done

for repo in "${archived_repos[@]}"; do
  if grep -q -- "$repo" README.md; then
    fail "README still promotes an archived repo: $repo"
  fi
done

# The flagship must be reachable in the first mobile screen, so it has to appear
# early. Anything past ~40 lines is below the fold on a 390px viewport.
if [[ -f README.md ]]; then
  flagship_line="$(grep -n -- "micar-whitepaper-linter" README.md | head -1 | cut -d: -f1)"
  if [[ -z "$flagship_line" ]]; then
    fail "flagship not present in README"
  elif (( flagship_line > 40 )); then
    fail "flagship first appears at line $flagship_line; expected within the first 40"
  else
    pass "flagship appears early (line $flagship_line)"
  fi

  # Wide tables do not render on mobile.
  if grep -qE '^\|([^|]*\|){4,}' README.md; then
    fail "README contains a table with 4+ columns (breaks mobile rendering)"
  else
    pass "no wide tables"
  fi

  words="$(wc -w < README.md | tr -d ' ')"
  if (( words > 400 )); then
    fail "README is $words words; target is 250-350"
  else
    pass "README length $words words"
  fi
fi

if [[ -f docs/portfolio-claim-ledger.md ]]; then
  pass "claim ledger present"
  # Match a disposition cell, not the legend that lists the vocabulary.
  if grep -qE '\|[[:space:]]*(PENDING|RETRACTED)\b' docs/portfolio-claim-ledger.md; then
    fail "claim ledger has an unresolved PENDING or RETRACTED disposition"
  else
    pass "no unresolved ledger dispositions"
  fi
else
  fail "missing docs/portfolio-claim-ledger.md"
fi

combined="$(mktemp)"
trap 'rm -f "$combined"' EXIT
cat "${front_door_files[@]}" > "$combined" 2>/dev/null

for term in "${required_terms[@]}"; do
  grep -qi -- "$term" "$combined" || fail "missing safety term: $term"
done
pass "safety terms present"

if [[ "${CHECK_LIVE_GITHUB_VISIBILITY:-0}" == "1" ]]; then
  printf 'Live GitHub checks\n'
  command -v gh >/dev/null || fail "gh is required for live checks"

  before=$failures
  for repo in "${flagship_repos[@]}"; do
    visibility="$(gh api "repos/sebastianfoerste/$repo" --jq '.visibility' 2>/dev/null || echo missing)"
    [[ "$visibility" == "public" ]] || fail "flagship repo not public: $repo ($visibility)"

    licence="$(gh api "repos/sebastianfoerste/$repo/license" --jq '.license.spdx_id' 2>/dev/null || echo none)"
    [[ "$licence" == "MIT" ]] || fail "licence is $licence, expected MIT: $repo"

    sha="$(gh api "repos/sebastianfoerste/$repo/commits/main" --jq '.sha' 2>/dev/null || echo none)"
    [[ "$sha" != "none" ]] || fail "no public default-branch SHA: $repo"
  done
  if (( failures == before )); then
    pass "flagship visibility, licence and default branch"
  fi

  # Pins are user-controlled, so they are verified live rather than assumed.
  pin_query='query{user(login:"sebastianfoerste"){pinnedItems(first:6,types:REPOSITORY){nodes{...on Repository{name isArchived}}}}}'
  pin_filter='.data.user.pinnedItems.nodes[] | .name + ":" + (.isArchived|tostring)'
  pins=$(gh api graphql -f query="$pin_query" --jq "$pin_filter" 2>/dev/null)
  if [[ -z "$pins" ]]; then
    fail "could not read pins"
  else
    pin_before=$failures
    while IFS=: read -r name archived; do
      [[ -z "$name" ]] && continue
      if [[ "$archived" == "true" ]]; then
        fail "pinned repository is archived: $name"
      fi
    done <<< "$pins"
    if ! printf '%s\n' "$pins" | grep -q "^micar-whitepaper-linter:"; then
      fail "flagship is not pinned"
    fi
    if (( failures == pin_before )); then
      pass "pin check complete"
    fi
  fi

  homepage="$(gh api repos/sebastianfoerste/micar-whitepaper-linter --jq '.homepage // ""' 2>/dev/null)"
  if [[ "$homepage" == *playground* ]]; then
    pass "flagship homepage points to the playground"
  else
    fail "flagship homepage does not point to the playground; got: ${homepage:-empty}"
  fi
fi

printf '\n'
if (( failures > 0 )); then
  printf 'profile proof check FAILED with %d issue(s)\n' "$failures" >&2
  exit 1
fi
printf 'profile proof check passed\n'
