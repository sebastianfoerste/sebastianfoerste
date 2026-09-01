# Portfolio claim ledger

Baseline captured 2026-09-01. Dispositions: VERIFIED / CORRECTED / PENDING / RETRACTED.
No claim in this table may appear in public wording while marked PENDING or RETRACTED.

## Public baseline (default branch at capture)

| Repository | Public SHA | Licence (GitHub) | Archived | Homepage |
|---|---|---|---|---|
| micar-whitepaper-linter | `135c6e13c5` | MIT | no | none |
| eu-ai-act-classifier | `a5838533c4` | MIT | no | web-opal-chi-38.vercel.app |
| legal-function-operating-system | `871118ad3f` | MIT | no | Pages |
| contract-review-eval-harness | `8be3ef8745` | MIT | no | adversarial report |
| dpa-and-data-transfer-review | `b498a0ce84` | **NOASSERTION** | no | none |

Linter releases: `v1.0.0` (2026-07-17), `v0.1.0`; mutable `v1` tag present.
Pins (live, GraphQL): legal-function-operating-system, **legal-ops-agent (ARCHIVED)**,
contract-review-eval-harness, micar-whitepaper-linter, dpa-and-data-transfer-review.
Local: linter and classifier both on `codex/hybrid-consolidation-2026-08-26` (preserve).

## Claims

| # | Claim | Where | Source status | Verified | Disposition |
|---|---|---|---|---|---|
| 1 | AI Act Annex III high-risk applies **2026-08-02** | classifier public main: `docs/sample-output.md`, `docs/sample-review-dossier.md`, `docs/classification.svg` | Superseded by Reg. (EU) 2026/1744 | 2026-09-01 | RETRACTED → fix staged in classifier PR #4 (unmerged) |
| 2 | Amended AI Act dates are "provisional political agreement (7 May 2026)" | classifier public main: `docs/DESIGN.md`, `FEATURES.md`, `methodology.md`, `launch-readiness.md` | Now binding law | 2026-09-01 | CORRECTED → classifier PR #4 (unmerged) |
| 3 | Reg. (EU) 2026/1744 in force 2026-07-27; Annex III 2027-12-02; Annex I route 2028-08-02 | local commit `65d2b12` (unpublished) | Binding; EC confirmation + OJ L_202601744 | 2026-09-01 | VERIFIED → classifier PR #4 (unmerged) |
| 4 | iXBRL tagging check `COMMON.IXBRL_TAGGING` | linter `src/micar_linter/linter.py` `_apply` | Fails open: JSON/DOCX and untagged XHTML return **PASS** | 2026-09-01 | RETRACTED → fix staged in linter PR #9 (unmerged) |
| 5 | `ANNEX_II.G.COMPOSITION` requires "30%" unconditionally, cited to Art. 36(1) | linter `rules/annex_ii.py` | Deposit floor is fact-dependent (30%/60%, significance) | 2026-09-01 | CORRECTED → linter PR #9 (unmerged) |
| 6 | "MIT. See LICENSE." | dpa-and-data-transfer-review README:105 | LICENSE is "All rights reserved"; GitHub reads NOASSERTION | 2026-09-01 | RETRACTED → fix staged in dpa PR #3 (unmerged) |
| 7 | Linter test suite | 76 tests pass | local, `codex/hybrid-consolidation-2026-08-26` | 2026-09-01 | VERIFIED |
| 8 | Classifier test suite | 97 tests pass | local, same branch | 2026-09-01 | VERIFIED |
| 9 | "35 rules" | linter README / list entries | 35 distinct rule IDs (29 Annex + 6 cross-cutting) | 2026-08-31 | VERIFIED (wording: say "rule IDs") |
| 10 | Playground live | sebastianfoerste.github.io/micar-whitepaper-linter/playground/ | HTTP 200 | 2026-08-31 | VERIFIED |

## Open PRs to reconcile

- linter #8 (draft) `agent/extraordinary-proof-surfaces-20260728` — rule provenance ledger.
- dpa #1, #2 (both draft) — role-neutral language; transfer-chain evidence graph.
- Five awesome-list PRs open; **do not delete their forks**. awesome-legaltech #98 MERGED.

## Distribution freeze

No new repositories, no further list submissions, no Marketplace publication, no launch
posts, no outreach until claims 1, 2, 4, 5 and 6 are dispositioned VERIFIED or CORRECTED
on public main.

## Remediation status (2026-09-01)

| PR | Scope | Checks | State |
|---|---|---|---|
| [classifier #4](https://github.com/sebastianfoerste/eu-ai-act-classifier/pull/4) | AI Act timeline correction + demo artifacts | ruff check, ruff format, 97 tests, source URLs, web build | open, unmerged |
| [linter #9](https://github.com/sebastianfoerste/micar-whitepaper-linter/pull/9) | fail-closed iXBRL gate; reserve rule split | 96 tests, ruff; CI green 3.13 + 3.14 | open, unmerged |
| [dpa #3](https://github.com/sebastianfoerste/dpa-and-data-transfer-review/pull/3) | MIT licence consistency + assertion test | 14 tests (`make test`) | open, unmerged |

Every public defect remains live until these are merged. Merging is owner-gated.

Deferred, owner decision: dpa draft PRs #1 and #2; linter provenance PR #8 rebase;
pin change (legal-ops-agent is archived); profile README rewrite; Glama/Marketplace;
the 21-finding study review, which should run against the frozen rule engine after
linter #9 lands.
