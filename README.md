# Sebastian Förste

German-qualified lawyer, partner at gunnercooke, former NLP data scientist. I practise EU financial regulation: MiCAR, MiFID II, PSD2, DORA, and the AI Act where it reaches financial services. The repositories below turn that practice into deterministic, cited, testable tools. Every rule maps to a provision, and every finding carries its source status and a human-review boundary.

## Start here

**[micar-whitepaper-linter](https://github.com/sebastianfoerste/micar-whitepaper-linter)** checks a crypto-asset white paper draft against Annex I to III of MiCAR and reports each gap with a pinpoint citation.

- Try it in the browser, no install: [playground](https://sebastianfoerste.github.io/micar-whitepaper-linter/playground/)
- Run it locally in three minutes: clone the repository, then `make install && make test && make demo`
- Wire it into CI with the GitHub Action (`@v1`), or start from the [template repository](https://github.com/sebastianfoerste/micar-whitepaper-template)

Rules fail closed. A draft format cannot pass the XHTML and Inline XBRL notification check, and the reserve deposit floor under Art. 36(4)(d) MiCAR stays in review until a lawyer has characterised significance and the referenced currency.

## Supporting proofs

- **[legal-function-operating-system](https://github.com/sebastianfoerste/legal-function-operating-system)**: an operating model for legal intake, risk bands, routing, SLAs, approvals, and board reporting, with a supervised agent held behind a versioned control contract.
- **[contract-review-eval-harness](https://github.com/sebastianfoerste/contract-review-eval-harness)**: deterministic scoring of AI contract review against hand-authored answer sets, including an adversarial campaign the baseline adapter fails.

## Specialist tools

- **[eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier)**: AI Act risk-tier triage with cited obligations, current under Regulation (EU) 2026/1744.
- **[dpa-and-data-transfer-review](https://github.com/sebastianfoerste/dpa-and-data-transfer-review)**: cited GDPR Art. 28 and Chapter V checks with a visible review state.

## Boundaries

All examples are synthetic. These are reviewable prototypes with source provenance and audit trails, not claims of production deployment. This is not legal advice, and no tool permits consequential external action without human review. AI assisted the implementation; the rule taxonomies, citations, and scope limits are my judgment.

## Background

Admitted in Germany in 2012. Trained at Hengeler Mueller, Freshfields Bruckhaus Deringer, and Cleary Gottlieb. Earlier, Python NLP pipelines as a data scientist at Dudenverlag.

[LinkedIn](https://www.linkedin.com/in/sebastianfoerste)
