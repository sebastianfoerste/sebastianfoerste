# Case Study: MiCAR Authorization Co-Pilot

## Context

MiCAR authorization work is document-heavy, source-sensitive and review-dependent. The same structural questions recur across CASP, ART and EMT workflows: what facts are needed, which sources support a draft section, which clauses remain unverified and which outputs can be exported.

## Product problem

A lawyer reviewing authorization materials needs more than a chat interface. The workflow must preserve matter scope, verified legal sources, drafting history, reviewer decisions and export eligibility.

## Architecture decision

The co-pilot is built as a review-gated workflow rather than an autonomous legal drafter.

Core controls:

- Owner-scoped mandates and access checks.
- Verified source anchors before external synthesis.
- Redaction before outbound processing.
- Citation verification before clause approval.
- Supervised agents that create findings and proposed actions only.
- Lawyer-approved export gates for final packages.

## Public safety posture

The repository is a prototype using public and synthetic material. It does not process client matters and does not produce filing-ready legal advice without qualified human review.
