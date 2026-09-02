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
| 1 | AI Act Annex III high-risk applies **2026-08-02** | classifier public main: `docs/sample-output.md`, `docs/sample-review-dossier.md`, `docs/classification.svg` | Superseded by Reg. (EU) 2026/1744 | 2026-09-01 | CORRECTED → merged, classifier main `066cb09` (2026-09-02) |
| 2 | Amended AI Act dates are "provisional political agreement (7 May 2026)" | classifier public main: `docs/DESIGN.md`, `FEATURES.md`, `methodology.md`, `launch-readiness.md` | Now binding law | 2026-09-01 | CORRECTED → merged, classifier main `066cb09` (2026-09-02) |
| 3 | Reg. (EU) 2026/1744 in force 2026-07-27; Annex III 2027-12-02; Annex I route 2028-08-02 | local commit `65d2b12` (unpublished) | Binding; EC confirmation + OJ L_202601744 | 2026-09-01 | VERIFIED → public on classifier main `066cb09` |
| 4 | iXBRL tagging check `COMMON.IXBRL_TAGGING` | linter `src/micar_linter/linter.py` `_apply` | Fails open: JSON/DOCX and untagged XHTML return **PASS** | 2026-09-01 | CORRECTED → merged, linter main `f30629f` (2026-09-02) |
| 5 | `ANNEX_II.G.COMPOSITION` requires "30%" unconditionally, cited to Art. 36(1) | linter `rules/annex_ii.py` | Deposit floor is fact-dependent (30%/60%, significance) | 2026-09-01 | CORRECTED → merged, linter main `f30629f` (2026-09-02) |
| 6 | "MIT. See LICENSE." | dpa-and-data-transfer-review README:105 | LICENSE is "All rights reserved"; GitHub reads NOASSERTION | 2026-09-01 | CORRECTED → merged, dpa main `c7b182e`; GitHub now reads MIT (2026-09-02) |
| 7 | Linter test suite | 76 tests pass | local, `codex/hybrid-consolidation-2026-08-26` | 2026-09-01 | VERIFIED |
| 8 | Classifier test suite | 97 tests pass | local, same branch | 2026-09-01 | VERIFIED |
| 9 | "35 rules" | linter README / list entries | 35 distinct rule IDs (29 Annex + 6 cross-cutting) | 2026-08-31 | VERIFIED (wording: say "rule IDs") |
| 10 | Playground live | sebastianfoerste.github.io/micar-whitepaper-linter/playground/ | HTTP 200 | 2026-08-31 | VERIFIED |
| 11 | Cockpit screenshots `docs/cockpit.png` and `docs/demo.png` | classifier main after #4 | Both still showed "provisional political agreement" and 2026-08 due dates | 2026-09-02 | CORRECTED → merged, classifier main `2866607` (2026-09-02) |
| 12 | Repository homepage implies a working hosted cockpit | eu-ai-act-classifier homepage → web-opal-chi-38.vercel.app | Vercel cannot spawn the python backend; page stays at "Classifying", 0 registry entries | 2026-09-02 | CORRECTED → homepage field cleared; README and DEPLOYMENT.md now state there is no working hosted deployment, classifier main `acbce21` (2026-09-02) |

## Open PRs to reconcile

- linter #8 (draft) `agent/extraordinary-proof-surfaces-20260728` — rule provenance ledger.
- dpa #1, #2 (both draft) — role-neutral language; transfer-chain evidence graph.
- Five awesome-list PRs open; **do not delete their forks**. awesome-legaltech #98 MERGED.

## Distribution freeze

No new repositories, no further list submissions, no Marketplace publication, no launch
posts, no outreach until claims 1, 2, 4, 5 and 6 are dispositioned VERIFIED or CORRECTED
on public main.

## Remediation status (2026-09-02)

| PR | Scope | Checks | State |
|---|---|---|---|
| [classifier #4](https://github.com/sebastianfoerste/eu-ai-act-classifier/pull/4) | AI Act timeline correction + demo artifacts | ruff check + format, 97 tests, source URLs, web build | **merged** `066cb09` |
| [linter #9](https://github.com/sebastianfoerste/micar-whitepaper-linter/pull/9) | fail-closed iXBRL gate; reserve rule split | 96 tests, ruff; CI 3.13 + 3.14 | **merged** `f30629f` |
| [dpa #3](https://github.com/sebastianfoerste/dpa-and-data-transfer-review/pull/3) | MIT licence consistency + assertion test | 14 tests (`make test`) | **merged** `c7b182e` |
| [classifier #5](https://github.com/sebastianfoerste/eu-ai-act-classifier/pull/5) | regenerated cockpit screenshots from merged main | DOM-verified before capture | **merged** `2866607` |
| [classifier #6](https://github.com/sebastianfoerste/eu-ai-act-classifier/pull/6) | hosted-cockpit claim corrected in README and DEPLOYMENT.md | CI | **merged** `acbce21` |
| [eu-reg-mcp #1](https://github.com/sebastianfoerste/eu-reg-mcp/pull/1) | linter rule count 35 → 36 | CI | **merged** `e3f8de9` |
| [awesome-legaltech #99](https://github.com/Vaquill-AI/awesome-legaltech/pull/99) | rule count 35 → 36 in the merged list entry | their link-check | open, third-party |
| [linter #8](https://github.com/sebastianfoerste/micar-whitepaper-linter/pull/8) | rule provenance ledger, rebased onto #9, regenerated (48 entries) | `micar-rule-proof --check` passes, 102 tests | draft; legal mapping needs owner review |
| [profile #3](https://github.com/sebastianfoerste/sebastianfoerste/pull/3) | README rewrite, ledgers, extended checker | static checks | **merged** `f777e69` |

Repository metadata set 2026-09-02: flagship homepage → playground; classifier homepage cleared. Canonical eu-reg-toolkit README carries the same rule-count fix in local commit `05346ae` on `codex/hybrid-consolidation-2026-08-26` (unpushed; `mcp-release` push is disabled by design) so the next `export-release-surface` keeps parity.

Still owner-only: pins (no API; `legal-ops-agent` archived and pinned, flagship not pinned); the 21-finding study review against the frozen rule engine on linter `f30629f`; LegalBench sign-off; Marketplace; `v1.0.1` release and moving `v1`.
