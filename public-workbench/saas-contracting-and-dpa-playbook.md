# SaaS Contracting and DPA Playbook

This is a public-safe playbook for AI-native SaaS legal work. It models the recurring commercial, privacy and AI-vendor questions I handle in practice as structured intake, fallback positions, escalation triggers and human-reviewed outputs.

It uses synthetic examples only. It is not legal advice and does not contain client material.

## What this covers

- MSA and customer terms deviation review.
- DPA triage for GDPR, international transfers and SCCs.
- CCPA and US privacy issue spotting.
- AI model-provider terms, training-data restrictions and zero-data-retention positions.
- Open-source licence review for SaaS and on-prem distribution models.
- Regulated-customer terms for finance, healthcare and other sensitive sectors.
- Escalation logic for legal, DPO, security, finance and product owners.

## Intake model

Every review starts with structured facts rather than a free-form email thread.

```json
{
  "customer": "Acme Health Systems",
  "sector": "healthcare",
  "deployment": "cloud_saas",
  "contractType": "msa_plus_dpa",
  "dataCategories": ["employee data", "customer content", "health-related free text"],
  "aiFeatures": ["drafting assistant", "retrieval over customer workspace"],
  "modelProvider": "external_ai_lab",
  "modelTraining": "contractually_prohibited",
  "retention": "zero_data_retention_requested",
  "transferMechanism": "sccs_required",
  "openSourceComponents": ["mit", "apache-2.0", "agpl-3.0_candidate"],
  "customerRequests": [
    "uncapped liability for data incidents",
    "weekly training opt-out audit",
    "EU-only processing",
    "audit rights over subprocessors"
  ]
}
```

## MSA deviation review

| Issue | Default position | Fallback | Escalation trigger |
| --- | --- | --- | --- |
| Uncapped liability | Reject uncapped general liability | Consider narrow super-cap for confidentiality, data protection or security incidents | Any uncapped liability, indemnity outside IP infringement, or regulated-sector customer |
| AI output warranty | No guarantee of perfect accuracy or fitness for legal, medical or financial decisions | Commit to documented safeguards, testing and human-review workflow | Customer asks for hallucination-free, error-free or autonomous decision warranty |
| Security audit rights | Provide standard security package and third-party reports | Permit controlled audit under confidentiality and frequency limits | Customer demands direct audits of infrastructure or subprocessors |
| Product roadmap commitment | No binding roadmap commitment | Document non-binding implementation intent | Customer links payment or termination rights to future feature delivery |
| On-prem or private deployment | Separate technical and support scope | Limited pilot with security and support approval | Deployment changes hosting, data boundary or support model |

## DPA and international transfer triage

| Issue | Review question | Escalation trigger |
| --- | --- | --- |
| Controller or processor role | Is the SaaS provider processing customer personal data only on documented instructions? | Mixed purposes, analytics reuse, training use or independent product improvement |
| Special category data | Does the workflow process Art. 9 GDPR data? | Health, biometric, union, ethnicity or inferred sensitive data |
| International transfers | Are SCCs, transfer impact assessment and subprocessor locations documented? | Non-EEA subprocessors, remote support outside the EEA or customer requires data residency |
| Deletion and return | Can deletion SLAs match technical architecture? | Indefinite retention, backups outside policy or model-provider retention conflict |
| Subprocessors | Are subprocessors listed and change notice periods operationally realistic? | Customer approval right over every subprocessor or audit rights over subprocessor systems |

## CCPA and US privacy issue spotting

The review should flag US privacy questions where customer data, employee data or consumer data may be processed in a way that creates sale, sharing, targeted advertising, service-provider or contractor issues.

Escalate if:

- customer data may be used for cross-context behavioural advertising;
- the vendor wants to reuse customer content for product training or general model improvement;
- sensitive personal information is processed at scale;
- the customer requires US state-specific addenda;
- the product combines customer content with third-party enrichment data.

## AI model-provider terms

| Topic | Required position | Escalation trigger |
| --- | --- | --- |
| Training | Customer prompts, outputs and files must not train base models unless expressly approved | Any default training right or opt-out that is not contractually locked |
| Retention | Prefer zero-data-retention or shortest technically necessary retention | Provider retains prompts or outputs beyond abuse monitoring need |
| Subprocessors | Provider subprocessor list and regions must be reviewable | Undisclosed model-hosting chain or region failover outside agreed boundary |
| Output rights | Customer-facing contract must avoid overpromising exclusivity or non-infringement | Customer asks for broad IP indemnity for all generated outputs |
| Human oversight | Consequential outputs require human review workflow | Product design allows autonomous legal, financial, employment, health or access decisions |

## Open-source licence review

| Licence family | SaaS risk | Distribution risk | Default action |
| --- | --- | --- | --- |
| MIT, BSD, Apache-2.0 | Low | Low to medium | Track notices and attribution |
| LGPL | Usually manageable | Medium | Engineering review for linking and modification model |
| GPL | Usually low for pure SaaS use | High if distributed | Legal review before distribution |
| AGPL | High for network service use | High | Escalate before use in core service |
| Unknown or custom | Unknown | Unknown | Block until licence is classified |

## Regulated-customer addendum

For customers in finance, healthcare, telecom or other sensitive sectors, the review should collect:

- regulated entity type and jurisdiction;
- outsourcing or third-party risk requirements;
- audit, access and information rights;
- incident notice periods;
- data residency and support-location restrictions;
- AI governance obligations imposed on the customer;
- evidence package required for procurement, security and compliance review.

## Review gate

A matter should be blocked from self-serve approval if any of the following are true:

- special category data or sensitive personal information is in scope;
- customer requires uncapped liability or broad indemnity;
- AI provider can train on customer content;
- no enforceable zero-data-retention or short-retention position exists;
- customer is regulated and requires outsourcing-style controls;
- AGPL or unknown open-source licence is part of the core service;
- product output may influence legal, financial, employment, health or access decisions;
- international transfers are not supported by a documented transfer mechanism.

## Output shape

```json
{
  "risk": "escalate",
  "approvalRequired": ["legal", "DPO", "security", "product_owner"],
  "blockers": [
    "Resolve AI provider retention and training position before signature.",
    "Confirm SCCs and subprocessor locations for non-EEA processing.",
    "Narrow uncapped liability request to a negotiated security/privacy super-cap."
  ],
  "fallbackPositions": [
    "Offer documented safeguards instead of accuracy warranty.",
    "Provide standard security package instead of unrestricted audit right.",
    "Use controlled subprocessor notice instead of individual approval right."
  ],
  "evidenceToCollect": [
    "Current DPA and SCC module.",
    "AI provider data-use terms.",
    "Security report and subprocessor list.",
    "Open-source bill of materials."
  ]
}
```

## Sample contract deviation report

Matter: Synthetic SaaS MSA deviation review for Northstar SaaS Ltd.

Review status: Legal review required before signature. Draft only.

Summary:

- Risk level: escalate.
- Main blocker: customer asks for uncapped liability for all breaches and a warranty that AI-assisted output will be error-free.
- Commercial path: accept a narrow privacy and security super-cap only if finance approves the cap and security confirms the control package.
- Legal path: reject autonomous-output warranty and replace it with documented safeguards, customer configuration duties and human review language.

Deterministic findings:

- Liability cap deviates from standard position because uncapped liability is requested outside a narrow data or confidentiality basket.
- AI output warranty triggers escalation because it converts a supervised feature into an accuracy guarantee.
- Direct audit right should be replaced with third-party reports, security documentation and controlled audit rights.

Evidence required:

- Current security report.
- Standard DPA and subprocessor list.
- Product description showing human review and customer configuration controls.
- Finance approval for any privacy or security super-cap.

Approval state:

- Legal: pending.
- Security: pending.
- Finance: pending if super-cap is offered.
- Export: blocked until the required approvals are recorded.

## Sample DPA triage report

Matter: Synthetic processor DPA review for Atlas Analytics GmbH.

Review status: DPO and legal review required. Draft only.

Summary:

- Risk level: high.
- Main blocker: missing subprocessor list and unclear non-EEA support access.
- Transfer position: SCCs and transfer impact assessment evidence required before approval.
- Data position: special category data is possible because free-text customer fields may include health-related notes.

Deterministic findings:

- Missing subprocessors produce a blocker because the customer cannot assess onward processing or transfer risk.
- Non-EEA support access triggers international transfer review.
- Free-text fields require a special-category data check and product evidence on filtering, retention and deletion.

Evidence required:

- Subprocessor list with location, service function and change notice period.
- SCC module and transfer impact assessment summary.
- Retention and deletion description covering backups.
- Product statement on whether special-category data is expected, blocked or technically possible.

Approval state:

- DPO: pending.
- Legal: pending.
- Security: pending.
- Export: blocked until subprocessor and transfer evidence is complete.

## Sample AI vendor review report

Matter: Synthetic AI model-provider terms review for Meridian Support AI.

Review status: Product counsel and DPO review required. Draft only.

Summary:

- Risk level: block.
- Main blocker: vendor terms allow customer prompts and outputs to be used for model improvement unless the customer opts out in the console.
- Retention issue: default retention exceeds the proposed customer contract position.
- Product issue: support recommendations may affect regulated customers and require visible human review.

Deterministic findings:

- Model training on customer content is incompatible with the preferred position unless it is contractually disabled.
- Console-only opt-out is insufficient for enterprise commitments because the contractual right remains ambiguous.
- Retention mismatch requires security and DPO review before customer-facing promises are made.

Evidence required:

- Executed vendor DPA or data-processing addendum.
- Contractual zero-data-retention or no-training confirmation.
- Subprocessor and region list for model hosting.
- Product control showing review before consequential customer-facing action.

Approval state:

- DPO: pending.
- Product counsel: pending.
- Security: pending.
- Export: blocked until the no-training and retention positions are contractually documented.

## Integration with ai-saas-legal-ops-starter-kit

This playbook defines the legal judgment structure. The starter kit turns the same structure into executable intake, deterministic checks, risk reporting and approval gates.

Suggested mapping:

```yaml
playbook_issue: ai_provider_training
starter_kit_intake: ai_vendor_review
deterministic_rule: customer_data_used_for_model_training
review_gate:
  required_approvals:
    - DPO
    - Product Counsel
    - Security
  export_state: blocked_until_approved
evidence:
  - vendor_dpa
  - no_training_confirmation
  - retention_terms
  - subprocessor_list
```

Use the playbook to agree the position. Use the starter kit to make the position visible in intake, tests, board risk register, evidence requests and audit trail.

## Human review notice

This playbook is a workflow artifact. It helps structure review, issue spotting and escalation. It does not approve contracts, replace legal judgment or create legal advice. Final decisions require a qualified lawyer or the accountable internal owner.
