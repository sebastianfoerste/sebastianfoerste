# Sebastian Förste

German-qualified lawyer, former NLP data scientist, and partner at gunnercooke. I build cited, testable infrastructure for EU-regulated products and legal work.

My projects combine primary-source legal analysis with data pipelines, deterministic checks, evaluation harnesses, explicit review states, and human approval gates. The aim is practical: make assumptions, sources, unresolved facts, and consequential actions visible before anyone relies on an output.

## Current research

### MiCAR disclosure infrastructure

- [MiCAR Register Observatory](https://github.com/sebastianfoerste/micar-register-observatory) snapshots ESMA's public MiCAR register, tracks additions and removals, and separates URL-shape candidates from byte-verified document formats.
- [The State of the MiCAR Register](https://github.com/sebastianfoerste/state-of-the-micar-register) publishes versioned quantitative reports generated from dated observatory snapshots.
- [MiCAR Whitepaper Linter](https://github.com/sebastianfoerste/micar-whitepaper-linter) maps Article 6 and Annexes I to III to deterministic checks with stable rule IDs and pinpoint citations.
- [eu-reg-mcp](https://github.com/sebastianfoerste/eu-reg-mcp) exposes register facts, change tracking, white-paper checks, and EU AI Act classification to local AI clients through MCP.

The public white-paper study, implemented in [MiCAR Whitepaper Linter](https://github.com/sebastianfoerste/micar-whitepaper-linter), is a reproducible pilot. Its rule findings remain candidate gaps until human legal review is complete. The repositories distinguish register facts, extraction results, deterministic findings, and reviewed legal conclusions.

## Evaluation and supervised workflows

| Project | Purpose |
| --- | --- |
| [contract-review-eval-harness](https://github.com/sebastianfoerste/contract-review-eval-harness) | Measures clause coverage, risk-label accuracy, citation grounding, and unsupported citations against human-authored answer sets. |
| [legal-ops-agent](https://github.com/sebastianfoerste/legal-ops-agent) | Runs typed intake, deterministic risk triage, reviewer routing, audit logging, and approval-gated export. |
| [eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier) | Produces cited first-pass classifications, obligation maps, timelines, and unresolved-fact queues under the EU AI Act. |
| [dpa-and-data-transfer-review](https://github.com/sebastianfoerste/dpa-and-data-transfer-review) | Applies cited GDPR Article 28 and Chapter V checks to structured DPA facts and returns a gated review packet. |
| [MiCAR Authorization Co-Pilot](https://github.com/sebastianfoerste/MiCAR-Authorization-Co-Pilot) | Models source-backed, review-gated preparation of MiCAR authorisation and white-paper materials. |
| [EU Financial Regulation Horizon Scanner](https://github.com/sebastianfoerste/eu-financial-reg-horizon-scanner) | Turns official regulatory publications into classified, reviewable product-impact records. |

For a complete list of projects grouped by problem domain, see the [Project Index](docs/project-index.md).

## Industrial robotics General Counsel reviewer route

| Management question | Public proof |
| --- | --- |
| Can a cross-border robotics transaction be signed, deployed, and recognized consistently by Legal and Finance? | [legal-function-operating-system](https://github.com/sebastianfoerste/legal-function-operating-system) |
| Can the Germany-US group operate, delegate authority, hire, bill intercompany, transfer employee data, and prepare for financing? | [Cross-Border Governance OS](https://github.com/sebastianfoerste/cross-border-governance-os) and its [live control room](https://sebastianfoerste.github.io/cross-border-governance-os/) |
| How is automated contract review measured for clause coverage, risk labels, citation grounding, and unsupported claims? | [contract-review-eval-harness](https://github.com/sebastianfoerste/contract-review-eval-harness) |
| How are EU AI Act classifications, obligations, timelines, and unresolved product facts kept reviewable? | [eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier) |

The cross-border replay moves a synthetic US enterprise contract from blocked
at Day 0 to human approval required at Day 30. The approval-ready state clears
the remaining evidence blockers while execution stays disabled and named human
approvals remain required. Review the [one-minute executive brief](https://github.com/sebastianfoerste/cross-border-governance-os/blob/main/examples/executive-brief.md)
and [scenario comparison](https://github.com/sebastianfoerste/cross-border-governance-os/blob/main/examples/scenario-comparison.md)
before opening the detailed decision pack.

The route uses synthetic data, deterministic checks, source provenance, and
human review gates. It covers commercial execution, corporate governance,
employment readiness, privacy, AI governance, and quality assurance without
automating signature, filing, approval, or final legal conclusions.

## Engineering approach

- Cite primary law and preserve source status.
- Prefer deterministic checks where the legal condition can be stated explicitly.
- Keep model-assisted drafting separate from binding classification logic.
- Record open facts, review state, provenance, and artifact digests.
- Block filing, publication, delivery, or other consequential action until a human approves it.
- Use synthetic data in public demonstrations and state limitations directly.
- Test claims with fixtures, expected answers, and reproducible commands.

## Background

I advise on AI, SaaS, crypto-assets, capital markets, payments, and EU financial regulation at gunnercooke in Germany. I was admitted as a German lawyer in 2012 and trained at Hengeler Mueller, Freshfields Bruckhaus Deringer, and Cleary Gottlieb. Earlier, I built Python NLP pipelines as a data scientist at Dudenverlag.

Languages: German (native), English (fluent), French (professional working knowledge), and Swedish (professional working knowledge).

## Use and limitations

These repositories are public research and public-safe software prototypes. Unless a repository expressly says otherwise, examples use synthetic data, outputs require qualified human review, and nothing is legal advice.

[LinkedIn](https://www.linkedin.com/in/sebastianfoerste)
