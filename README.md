# Sebastian Förste

German-qualified lawyer, partner at gunnercooke, former NLP data scientist. I work in German and English. The repositories below cover three jobs around legal AI: evaluating what a model produces, enabling lawyers to use it under review, and measuring whether adoption holds. My practice is EU financial regulation, and the regulatory tools apply the same method: every finding carries its source status and a human review boundary.

## Evaluate

**[contract-review-eval-harness](https://github.com/sebastianfoerste/contract-review-eval-harness)** scores an AI contract review against hand-authored answer sets for an NDA, a SaaS agreement and a DPA: clause coverage, risk severity, citation grounding and hallucinations.

- Run it in three minutes: clone, then `make install && make test && make demo`
- The sample run catches a fabricated citation and marks the output for rejection
- An adversarial campaign documents where the baseline adapter fails

## Enable and measure

- **[legal-ai-workshop-kit](https://github.com/sebastianfoerste/legal-ai-workshop-kit)**: partner briefing, workshop and associate hands-on agendas, workflow discovery, a pilot prioritisation matrix, objection handling and a first 90 days plan.
- **[legal-ai-adoption-dashboard](https://github.com/sebastianfoerste/legal-ai-adoption-dashboard)**: account health, adoption blockers and a product feedback queue over synthetic accounts. [Live demo](https://legal-ai-adoption-dashboard.vercel.app).
- **[legal-function-operating-system](https://github.com/sebastianfoerste/legal-function-operating-system)**: legal intake, risk bands, routing, SLAs, approvals and board reporting, with a supervised agent held behind a versioned control contract.

## Regulatory depth

- **[micar-whitepaper-linter](https://github.com/sebastianfoerste/micar-whitepaper-linter)**: checks a crypto-asset white paper draft against Annex I to III of MiCAR and reports each gap with a pinpoint citation. Rules fail closed. Try the [playground](https://sebastianfoerste.github.io/micar-whitepaper-linter/playground/), no install.
- **[eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier)**: AI Act risk-tier triage with cited obligations, current under Regulation (EU) 2026/1744.
- **[dpa-and-data-transfer-review](https://github.com/sebastianfoerste/dpa-and-data-transfer-review)**: cited GDPR Art. 28 and Chapter V checks with a visible review state.

## Boundaries

All examples are synthetic. These are reviewable prototypes with source provenance and audit trails, not claims of production deployment. This is not legal advice, and no tool permits consequential external action without human review. AI assisted the implementation; the rule taxonomies, citations, answer sets and scope limits are my judgment.

## Background

Admitted in Germany in 2012. Trained at Hengeler Mueller, Freshfields Bruckhaus Deringer, and Cleary Gottlieb. Earlier, Python NLP pipelines as a data scientist at Dudenverlag.

[LinkedIn](https://www.linkedin.com/in/sebastianfoerste)
