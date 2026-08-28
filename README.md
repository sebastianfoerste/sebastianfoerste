# Sebastian Förste

I build lean, review-gated legal operating systems for scaling technology companies.

I am a German-qualified lawyer, partner at gunnercooke, former founder and managing director, and former NLP data scientist. My legal practice covers technology transactions, AI and SaaS, crypto, capital markets, payments, and EU financial regulation. The repositories below show how I structure recurring legal work through clear intake, risk triage, approval paths, source provenance, human review, and audit trails.

The code is evidence of legal and operating judgment. My work remains centred on contracts, executive advice, governance, regulated products, and the design of a legal function that can scale with the business.

All public examples use synthetic data. They are reviewable prototypes rather than claims of production deployment. AI tools assisted implementation; the legal taxonomies, escalation logic, approval models, answer sets, and scope limits reflect my judgment. No repository provides legal advice or permits consequential external action without human approval.

## Three-repository reviewer path

| Start with | What it demonstrates | Review path |
| --- | --- | --- |
| **[`legal-function-operating-system`](https://github.com/sebastianfoerste/legal-function-operating-system)** | A first-GC operating model for intake, risk, priority, routing, SLAs, approvals, external counsel, escalation, and board reporting, with the supervised legal-operations agent maintained behind a versioned control contract | Read the [case study](https://github.com/sebastianfoerste/legal-function-operating-system/blob/main/CASE_STUDY.md), then inspect the [synthetic board pack](https://github.com/sebastianfoerste/legal-function-operating-system/blob/main/examples/board-pack.md) and the [shared control contract](https://github.com/sebastianfoerste/legal-function-operating-system/blob/main/contracts/README.md) |
| **[`contract-review-eval-harness`](https://github.com/sebastianfoerste/contract-review-eval-harness)** | Deterministic measurement of clause coverage, risk severity, citation grounding, and fabricated text, under an adversarial campaign the baseline adapter fails | Read the [case study](https://github.com/sebastianfoerste/contract-review-eval-harness/blob/main/CASE_STUDY.md), then inspect the [sample scorecard](https://github.com/sebastianfoerste/contract-review-eval-harness/blob/main/examples/scorecard.md) and the [adversarial robustness report](https://github.com/sebastianfoerste/contract-review-eval-harness/blob/main/examples/adversarial-robustness-report.md) |
| **[`dpa-and-data-transfer-review`](https://github.com/sebastianfoerste/dpa-and-data-transfer-review)** | Cited GDPR Article 28 and Chapter V checks with a visible review state and a gating exit code | Read the [project explanation](https://github.com/sebastianfoerste/dpa-and-data-transfer-review/blob/main/README.md), then inspect the [synthetic review packet](https://github.com/sebastianfoerste/dpa-and-data-transfer-review/blob/main/examples/review-packet.md) |

The supervised legal-operations agent formerly published as `legal-ops-agent` is now maintained inside the legal function operating system as its `supervised-agent` component. That repository is archived and points to the consolidated one.

## What the portfolio establishes

These projects make legal operating choices inspectable. A reviewer can see the risk bands, routing rules, approval matrix, external-counsel triggers, evaluation criteria, source boundaries, failure states, tests, and known limitations.

They also make the deployment boundary explicit. The public versions have no live company intake, production identity system, operational approval enforcement, or real client data. A production implementation would require company-specific playbooks, access controls, integrations, monitoring, and accountable legal ownership.

## Background

Partner at gunnercooke in Germany. German-qualified lawyer, admitted in 2012. Trained at Hengeler Mueller, Freshfields Bruckhaus Deringer, and Cleary Gottlieb. Earlier, I built Python NLP pipelines as a data scientist at Dudenverlag.

## Contact

[LinkedIn](https://www.linkedin.com/in/sebastianfoerste)
