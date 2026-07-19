#!/usr/bin/env bash
set -euo pipefail

front_door_files=(
  "README.md"
  "public-workbench/saas-contracting-and-dpa-playbook.md"
)

flagship_repos=(
  "legal-function-operating-system"
  "ai-saas-legal-ops-starter-kit"
  "contract-review-eval-harness"
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

fail() {
  printf 'profile proof check failed: %s\n' "$1" >&2
  exit 1
}

for file in "${front_door_files[@]}"; do
  [[ -f "$file" ]] || fail "missing required file: $file"
done

if grep -nE '^(<<<<<<<|=======|>>>>>>>)' "${front_door_files[@]}"; then
  fail "merge conflict marker found"
fi

for pattern in "${reject_patterns[@]}"; do
  if grep -RInE -- "$pattern" "${front_door_files[@]}"; then
    fail "blocked stale or overbroad phrase found: $pattern"
  fi
done

if grep -n $'\u2014' "${front_door_files[@]}"; then
  fail "em dash found in front-door docs"
fi

if grep -n $'\u2013' "${front_door_files[@]}"; then
  fail "en dash found in front-door docs"
fi

for repo in "${flagship_repos[@]}"; do
  grep -q -- "$repo" README.md || fail "README missing flagship repo: $repo"
done

combined_front_door="$(mktemp)"
trap 'rm -f "$combined_front_door"' EXIT
cat "${front_door_files[@]}" > "$combined_front_door"

for term in "${required_terms[@]}"; do
  grep -qi -- "$term" "$combined_front_door" || fail "missing safety term: $term"
done

printf 'profile proof check passed\n'
