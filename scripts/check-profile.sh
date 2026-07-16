#!/usr/bin/env bash
set -euo pipefail

front_door_files=(
  "README.md"
  "public-workbench/saas-contracting-and-dpa-playbook.md"
)

flagship_repos=(
  "contract-review-eval-harness"
  "legal-ops-agent"
  "dpa-and-data-transfer-review"
  "legal-function-operating-system"
  "cross-border-governance-os"
  "eu-ai-act-classifier"
  "MiCAR-Authorization-Co-Pilot"
  "eu-financial-reg-horizon-scanner"
)

required_terms=(
  "synthetic"
  "review gate"
  "source provenance"
  "audit"
  "not legal advice"
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

python3 - <<'PY'
import json
from pathlib import Path

expected = [
    "contract-review-eval-harness",
    "legal-function-operating-system",
    "cross-border-governance-os",
    "eu-ai-act-classifier",
    "ai-saas-legal-ops-starter-kit",
    "legal-ops-agent",
]
payload = json.loads(Path("docs/pinned-repositories.json").read_text())
actual = [item["name"] for item in payload["repositories"]]
if actual != expected:
    raise SystemExit(
        f"pinned repository manifest differs: expected {expected}, received {actual}"
    )
if payload.get("verified_via") != "GitHub GraphQL":
    raise SystemExit("pinned repository manifest lacks GraphQL verification metadata")
if payload.get("live_pin_rotation_status") != "pending_manual_github_ui":
    raise SystemExit("pinned repository manifest has an unexpected live pin state")
pin_state = {
    item["name"]: item.get("pinned_on_github")
    for item in payload["repositories"]
}
expected_pin_state = {
    "contract-review-eval-harness": True,
    "legal-function-operating-system": True,
    "cross-border-governance-os": False,
    "eu-ai-act-classifier": False,
    "ai-saas-legal-ops-starter-kit": True,
    "legal-ops-agent": True,
}
if pin_state != expected_pin_state:
    raise SystemExit(
        f"pinned repository state differs: expected {expected_pin_state}, "
        f"received {pin_state}"
    )
cross_border = next(
    item
    for item in payload["repositories"]
    if item["name"] == "cross-border-governance-os"
)
required_urls = {
    "live_demo_url",
    "executive_brief_url",
    "scenario_comparison_url",
}
missing_urls = sorted(required_urls - cross_border.keys())
if missing_urls:
    raise SystemExit(f"cross-border-governance-os lacks proof URLs: {missing_urls}")
PY

combined_front_door="$(mktemp)"
trap 'rm -f "$combined_front_door"' EXIT
cat "${front_door_files[@]}" > "$combined_front_door"

for term in "${required_terms[@]}"; do
  grep -qi -- "$term" "$combined_front_door" || fail "missing safety term: $term"
done

printf 'profile proof check passed\n'
