# Legal RAG Evals

Legal RAG Evals is a public scaffold for evaluating retrieval, citation and answer-quality behavior in legal AI workflows.

The project is intentionally small and inspectable. It is designed to show how a legal engineer should think about AI systems: not only whether the answer sounds plausible, but whether it is grounded, cited, current, complete and safe to rely on.

## Why this exists

Most legal AI demos focus on fluent answers. Legal work needs a stricter standard:

- Did the system retrieve the right source?
- Did it cite the source accurately?
- Did it distinguish law from assumption?
- Did it miss a gating issue?
- Did it overstate certainty?
- Did it identify stale, contradictory or missing material?

## Evaluation dimensions

| Dimension | Question |
|---|---|
| Retrieval recall | Did the system retrieve the source needed to answer the question? |
| Citation accuracy | Does every legal claim map to a cited source? |
| Completeness | Did the answer cover the legally material issues? |
| Staleness detection | Did the answer warn when source material may be outdated? |
| Contradiction handling | Did the answer identify conflicting sources or uncertainty? |
| Refusal / escalation | Did the system escalate when legal judgment is required? |
| Confidentiality | Did the workflow avoid exposing non-public or sensitive data? |

## Starter benchmark families

1. MiCAR white paper review
2. Crypto-asset service provider authorisation
3. DORA outsourcing register review
4. AI vendor governance review
5. Product counsel launch review
6. Contract-risk clause review

## Example task format

```json
{
  "id": "micar-art-reserve-001",
  "domain": "MiCAR",
  "question": "Does this ART white paper disclose reserve composition and custody arrangements sufficiently for first-pass review?",
  "sources_required": [
    "Regulation (EU) 2023/1114, Article 36",
    "Regulation (EU) 2023/1114, Annex II Part G"
  ],
  "expected_findings": [
    "reserve composition must be reviewed",
    "custody and segregation must be reviewed",
    "thin disclosure should be escalated"
  ],
  "must_escalate": true
}
```

## Minimal scorecard

```text
Question ID:
Retrieval recall: 0-2
Citation accuracy: 0-2
Legal completeness: 0-2
Uncertainty handling: 0-2
Escalation quality: 0-2
Total: 0-10
Reviewer notes:
```

## Data handling

All examples should use public legal sources, synthetic facts or sanitised fixtures. No client matter data, personal data, confidential business information or privileged communications should be used in public benchmarks.

## Status

Public scaffold. The next step is to add a small synthetic MiCAR benchmark set and a runner that compares retrieved sources and answer rubric scores.
