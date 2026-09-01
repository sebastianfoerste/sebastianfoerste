# Adoption ledger

Measures verified external use, not vanity counts. Opened 2026-09-01.

## Definitions

A metric only counts when the definition is met exactly. Views and clones are
recorded but never counted as adoption: both are dominated by automation
(registry indexers, CI, mirrors) and neither confirms a human ran anything.

| Metric | Counts only when | 30-day target |
|---|---|---:|
| Verified external install | a non-owner confirms, in writing, a successful local or Action run | 5 |
| Substantive conversation | written feedback or a conversation about a real use case | 3 |
| Useful external issue | reproducible defect, documentation gap, or relevant request, opened by a non-owner | 2 |
| External acceptance | a listing, contribution or integration accepted by another maintainer | 1 |
| Repeat user | the same external person completes a second run at least 7 days later | 1 |
| Stars | observed only, never a target | n/a |

## Baseline, 2026-09-01

| Repository | Stars | Views 14d | Clones 14d |
|---|---:|---|---|
| micar-whitepaper-linter | 0 | 6 / 2 unique | 17 / 12 unique |
| eu-ai-act-classifier | 1 | 1 / 1 unique | 7 / 7 unique |
| contract-review-eval-harness | 1 | 4 / 3 unique | 80 / 36 unique |

The harness clone count is the clearest example of why clones are excluded: 80
clones against 4 page views is machine traffic, not people.

## Scoreboard

| Metric | Confirmed | Evidence |
|---|---:|---|
| Verified external install | 0 | none |
| Substantive conversation | 0 | none |
| Useful external issue | 0 | no open issue from a non-owner across the portfolio |
| External acceptance | 1 | Vaquill-AI/awesome-legaltech#98, merged 2026-08-31 |
| Repeat user | 0 | none |

## Weekly log

| Week | Installs | Conversations | Issues | Acceptances | Repeat | Note |
|---|---:|---:|---:|---:|---:|---|
| 2026-09-01 | 0 | 0 | 0 | 1 | 0 | Baseline. Distribution frozen while trust defects are unmerged. |

## Decision rule at day 30

- Verified use and repeat behaviour present: continue investment.
- Visitors arrive but do not activate: fix onboarding, not distribution.
- Conversations reveal no urgent use case: reconsider positioning.
- A legal or technical trust defect recurs: pause distribution.
