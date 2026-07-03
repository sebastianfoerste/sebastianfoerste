# EU Financial Regulation Horizon Scanner

Public architecture note for a private legal engineering prototype.

## Summary

A regulatory horizon-scanning workflow for EU crypto, payments, digital assets and financial supervision. The system is designed to turn public regulatory signals into reviewed, product-relevant legal alerts.

## Problem

Regulated technology companies need to understand supervisory change early. The difficulty is not merely collecting publications. The useful workflow is to classify publications, connect them to products, route them for human review and prepare internal or external alerts only after review.

## Workflow

1. Ingest public regulator publications.
2. Normalise publication metadata.
3. Classify each item against a legal and regulatory taxonomy.
4. Score relevance against product maps, jurisdictions and business lines.
5. Route important items into legal review.
6. Let a reviewer correct classification, relevance, deadline and summary.
7. Generate an alert draft.
8. Send or publish only after approved review.
9. Record the decision and update taxonomy or product mapping where needed.

## Design principles

* Public-source ingestion only.
* Local deterministic scoring where possible.
* Human review before external communication.
* Review corrections become part of the audit trail.
* Product maps remain organisation-scoped.
* No scraping-first vanity project. The value is classification, routing, explanation and governance.
