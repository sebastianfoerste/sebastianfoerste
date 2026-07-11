# Project index

This index groups the public repositories by the problem they address. Each project documents its scope, verification path, and limitations in its own repository.

## Public regulatory research

| Project | Output | Status |
| --- | --- | --- |
| [micar-register-observatory](https://github.com/sebastianfoerste/micar-register-observatory) | Weekly ESMA register snapshots, normalized records, diffs, and format observations | Active |
| [state-of-the-micar-register](https://github.com/sebastianfoerste/state-of-the-micar-register) | Versioned quantitative report generated from a dated register snapshot | Active |
| [micar-whitepaper-linter](https://github.com/sebastianfoerste/micar-whitepaper-linter) | Cited Annex I to III checks and a review-gated Title II pilot study | Active research prototype |
| [eu-reg-mcp](https://github.com/sebastianfoerste/eu-reg-mcp) | MCP tools for register search, changes, cited white-paper checks, and EU AI Act classification | Active |

## Evaluation

| Project | Output | Verification |
| --- | --- | --- |
| [contract-review-eval-harness](https://github.com/sebastianfoerste/contract-review-eval-harness) | Clause, risk, and citation-grounding scorecards against human-authored answer sets | Offline deterministic test and demo path |
| [legal-ai-adoption-dashboard](https://github.com/sebastianfoerste/legal-ai-adoption-dashboard) | Synthetic adoption metrics and governance views | Local build and synthetic fixtures |

## Supervised legal workflows

| Project | Output | Verification |
| --- | --- | --- |
| [legal-ops-agent](https://github.com/sebastianfoerste/legal-ops-agent) | Typed matter assessment, reviewer routing, audit chain, and approval-gated export | Deterministic CLI and tests |
| [ai-saas-legal-ops-starter-kit](https://github.com/sebastianfoerste/ai-saas-legal-ops-starter-kit) | Structured intake, policy checks, and launch-governance reports | Synthetic matter fixtures and tests |
| [legal-function-operating-system](https://github.com/sebastianfoerste/legal-function-operating-system) | Routing, service levels, approvals, escalations, and operating reports | Deterministic sample runs |
| [legal-ai-workshop-kit](https://github.com/sebastianfoerste/legal-ai-workshop-kit) | Workshop and workflow-discovery materials | Public-safe examples |

## Cited regulatory checks

| Project | Regulatory domain | Boundary |
| --- | --- | --- |
| [eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier) | EU AI Act | First-pass classification pending qualified review |
| [dpa-and-data-transfer-review](https://github.com/sebastianfoerste/dpa-and-data-transfer-review) | GDPR Article 28 and Chapter V | Structured-input triage, not free-text legal advice |
| [MiCAR-Authorization-Co-Pilot](https://github.com/sebastianfoerste/MiCAR-Authorization-Co-Pilot) | MiCAR authorisation and white-paper preparation | Draft support with approval-gated export |
| [eu-financial-reg-horizon-scanner](https://github.com/sebastianfoerste/eu-financial-reg-horizon-scanner) | EU financial regulation | Product-impact triage over public sources |
| [dora-third-party-register-and-resilience-workbench](https://github.com/sebastianfoerste/dora-third-party-register-and-resilience-workbench) | DORA ICT third-party risk | Local-first workbench using synthetic records |

## Common design constraints

Public examples use synthetic data unless a repository expressly identifies a public regulatory source. Deterministic flags are kept separate from reviewed legal conclusions. External delivery, filing, publication, or other consequential action remains blocked until an authorised human approves it.
