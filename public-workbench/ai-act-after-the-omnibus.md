**Draft v1 for author review. Not yet verified or adopted by the author.**

# The AI Act after the Digital Omnibus: what banks and insurers must do, and where Claude fits

*Regulation (EU) 2026/1744 moved the high-risk date to 2 December 2027. It did not move the work. As of [date].*

Sebastian Förste, German-qualified lawyer (admitted 2012), former NLP data scientist. Independent analysis; not legal advice; not affiliated with or endorsed by Anthropic. Drafted with AI assistance (Claude); sources verified and conclusions adopted by the author on [date].

Claim-by-claim sources and their status: [verification table](ai-act-after-the-omnibus-verification.md).

## 1. Bottom line

- **The date moved, the duty did not.** The high-risk rules for credit scoring of natural persons and for life and health insurance pricing now apply from 2 December 2027, not 2 August 2026, and the date is fixed [1][2]. Systems placed on the market or put into service before then are covered only once significantly changed in design from that date; those intended for public authorities must comply by 2 August 2030 (Art. 111(2)).
- **Three duties already apply:** AI literacy measures, the prohibitions and, since 2 August 2026, transparency towards customers. DORA has governed in-scope banks' and insurers' contracts for ICT services, including AI services, since 17 January 2025 [2][9].
- **Much of the generative-AI value in a bank sits outside the high-risk perimeter.** What decides the model choice is DORA third-party risk, evidence and data location.

## 2. What the Omnibus changed, and what it did not

Regulation (EU) 2026/1744 amends the AI Act and has been in force since 27 July 2026 [1].

- High-risk dates moved from 2 August 2026 to 2 December 2027 (Annex III) and from 2 August 2027 to 2 August 2028 (Annex I). Both are fixed; the standards-linked trigger proposed in COM(2025) 836 was dropped.
- Art. 4 now asks providers and deployers to take measures to support AI literacy, with roles for the Commission, Member States and AI Board (Art. 4(2) and (3)).
- Art. 49(2) registration of Art. 6(3) "not high-risk" self-assessments survives in simplified form.
- New Art. 4a lets providers and deployers of all AI systems and models process special-category data to detect and correct bias, under conditions; high-risk providers keep the strict test of former Art. 10(5).
- Financial institutions' systems within Art. 74(6) stay outside the AI Office's new exclusive competence.
- Unchanged: the Annex III list, Art. 26 and the fine amounts. New: fines for the value-chain duties in Art. 25(2) and (4) and, except for prohibited practices, the lower of the two caps for small mid-caps (Art. 99(4)(da), (6a)).

Still open: the Art. 6 classification guidelines (Commission draft of 19 May 2026) [4] and the GDPR half of the omnibus, COM(2025) 837, still in the legislative process. Do not plan on it.

## 3. Where banks and insurers sit

- **Point 5(b)** of Annex III covers credit scoring of natural persons, except AI used to detect financial fraud [2]. Scoring companies is outside; sole traders and personal guarantors are natural persons.
- **Point 5(c)** covers risk assessment and pricing of natural persons in life and health insurance only.
- **Deployer or provider.** A bank that buys a scoring system is a deployer: Art. 26, a fundamental rights impact assessment (FRIA) before deploying (Art. 27(1)), notice to affected persons (Art. 26(11)) and explanations (Art. 86). It is a provider if it builds one (Arts. 3(3), 16), puts its name on a high-risk scoring system or repurposes a general-purpose system for scoring (Art. 25(1)(a), (c)).
- **Existing governance counts.** Arts. 17(4), 18(3), 19(2), 26(5)-(6) and 72(4) let financial institutions meet most quality management, documentation, logging and monitoring duties within existing governance.
- **Supervisor.** For regulated financial institutions' high-risk systems used in direct connection with their financial services, the financial supervisor is the market surveillance authority (Art. 74(6)). In Germany the KI-MIG names BaFin; other uses, such as HR, go to the Bundesnetzagentur [7].
- **Adjacent law.** Automated scoring also engages Art. 18(8) of the Consumer Credit Directive (EU) 2023/2225 [5] and, after C-634/21 SCHUFA, Art. 22 GDPR [8].

## 4. What, by when, who [1][2][3][5][6][9]

| What | By when | Who |
|---|---|---|
| DORA: register of information, risk assessment, Art. 30 contract terms; exit plan for critical or important functions | Since 17 Jan 2025 | ICT third-party risk, procurement |
| Prohibitions (Art. 5) | Since 2 Feb 2025 | Compliance, legal |
| AI literacy measures (Art. 4; amended text since 27 Jul 2026) | Since 2 Feb 2025 | HR, compliance |
| Transparency: chatbots, deepfakes (Art. 50) | Since 2 Aug 2026 | Product, marketing |
| German rules implementing the Consumer Credit Directive | 20 Nov 2026 | Retail credit |
| Marking for generative systems already on the market (Art. 50(2)); new Art. 5 prohibitions | 2 Dec 2026 | Vendors, in-house GenAI owners |
| Inventory and classification; document and register Art. 6(3) derogations | Now to mid-2027 (recommended) | Model risk, legal |
| Provider duties (Arts. 9-17, 43, 47-49, 72-73; see Art. 111(2)) | 2 Dec 2027 | Model owners, second line |
| Deployer duties, including the FRIA (Arts. 26, 27; see Art. 111(2)) | 2 Dec 2027 | Business line, compliance |
| High-risk under Annex I (regulated products) | 2 Aug 2028 | Product compliance (rare in banks and insurers) |

## 5. DORA already governs AI vendor contracts

DORA (Regulation (EU) 2022/2554) has applied since 17 January 2025 to the financial entities in its Art. 2 [9]. On the usual reading a model API is an ICT service (Art. 3(21)), so the vendor needs a register entry (Art. 28(3)), a pre-contract risk assessment (Art. 28(4)) and the terms of Art. 30(2); for a critical or important function, also the Art. 30(3) terms and an exit strategy (Art. 28(8)). BaFin's non-binding guidance of 18 December 2025 treats AI systems as ICT assets under DORA [10]. The critical ICT third-party providers designated on 18 November 2025 include AWS, Google Cloud and Microsoft entities, not Anthropic [11].

## 6. Why this is a case for Claude, and where it is not

- **Duties and certification.** *Evidence:* Anthropic announced in July 2025 it would sign the general-purpose AI Code of Practice and says it signed the AI-generated content Code in July 2026 (text watermarks, C2PA file credentials). It lists SOC 2 Type 2, ISO/IEC 27001, 27017, 27018 and CSA STAR, and announced ISO/IEC 42001 certification in January 2025 [12]-[16]. *Limit:* these cover Anthropic, not the bank's use; no BSI C5 is listed. Marking covers listed models and is still rolling out on Bedrock.
- **Data location.** *Evidence:* EU residency through Amazon Bedrock or Google Cloud, where the cloud provider is the processor [17]-[19]. *Limit:* Anthropic's own API stores data in the US; it and Claude Platform on AWS, where Anthropic is processor, offer only global or US inference. Bedrock lacks some features and not every model has an EU endpoint.
- **Retention.** *Evidence:* zero data retention by arrangement; no training on retained data without permission [18]. *Limit:* not for stateful features, nor for some designated models without Anthropic's express authorisation; flagged content may be kept for up to two years.
- **Exit.** *Evidence:* the cloud routes run on designated providers with DORA terms; MCP sits with the Linux Foundation's Agentic AI Foundation [20][22]. *Limit:* no public Anthropic DORA addendum was found [21]; ask whether the cloud addendum covers Claude.
- **Adoption.** *Evidence:* Allianz announced a partnership with Anthropic in January 2026, including claims-intake agents [23]. *Limit:* an announcement is not compliance evidence; Barclays (16,000 colleagues on a Claude-based assistant) is UK context only [24].

Claude fits outside Annex III, with human sign-off: KYC files, corporate credit memos, regulatory change mapping, complaints triage, FRIA drafts. A bank that builds a 5(b) scorer on Claude is its provider, and the model's source citations do not by themselves meet Art. 86.

## 7. Next 90 days

1. Inventory every AI use; classify against points 5(b) and 5(c), including the fraud carve-out.
2. Run and record an Art. 4 literacy programme.
3. Check AI vendor contracts and register entries against DORA.
4. Choose the EU-resident route; confirm its features and DORA terms.
5. Pilot one use case outside Annex III behind an evaluation gate.
6. Prepare a FRIA template for bought-in 5(b) and 5(c) systems.

## 8. Proof and sources

**Working proof (open source, synthetic data, not legal advice).**

- *Classification:* given a bank credit-scoring system characterised as Annex III point 5(b), or a life insurer's pricing model characterised as point 5(c), [eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier) returns high-risk and attaches Art. 26 and 27 duties dated 2 December 2027. The Annex III characterisation is an input a lawyer confirms. Worked examples: [to be added].
- *Review gate:* an unproven Art. 6(3) "not high-risk" claim returns `requires_review`, not a downgrade.
- *Claude integration:* [eu-reg-mcp](https://github.com/sebastianfoerste/eu-reg-mcp) exposes the classifier to Claude as an MCP tool [install fix pending]. Demo transcript: [to be added].

### Sources

1. Regulation (EU) 2026/1744 (Digital Omnibus on AI), OJ L 2026/1744 of 24 July 2026. https://eur-lex.europa.eu/eli/reg/2026/1744/oj/eng
2. Regulation (EU) 2024/1689 (AI Act), consolidated version of 27 July 2026, CELEX 02024R1689-20260727. https://eur-lex.europa.eu/eli/reg/2024/1689/2026-07-27/eng
3. European Parliament, press release 20260611IPR45207. https://www.europarl.europa.eu/news/en/press-room/20260611IPR45207/
4. European Commission, draft guidelines on the classification of high-risk AI systems, 19 May 2026. [URL to be added]
5. Directive (EU) 2023/2225 (Consumer Credit Directive), Arts. 18(8) and 48(1). http://data.europa.eu/eli/dir/2023/2225/oj
6. Gesetz zur Umsetzung der Richtlinie (EU) 2023/2225 über Verbraucherkreditverträge und zur Regelung der Förderung klimaneutraler Mobilität vom 12. Mai 2026, BGBl. 2026 I Nr. 139. https://www.recht.bund.de/bgbl/1/2026/139/VO.html
7. KI-MIG, BGBl. 2026 I Nr. 223. https://www.recht.bund.de/bgbl/1/2026/223/regelungstext.pdf
8. CJEU, judgment of 7 December 2023, C-634/21, SCHUFA Holding (Scoring). https://curia.europa.eu/juris/liste.jsf?num=C-634/21
9. Regulation (EU) 2022/2554 (DORA). https://eur-lex.europa.eu/eli/reg/2022/2554/oj/eng
10. BaFin, Orientierungshilfe zu IKT-Risiken beim Einsatz von KI, 18 December 2025. https://www.bafin.de/SharedDocs/Veroeffentlichungen/DE/Meldung/2025/meldung_2025_12_18_orientierungshilfe_ikt_risiken.html
11. European Supervisory Authorities, designation of critical ICT third-party providers, 18 November 2025. https://www.eba.europa.eu/publications-and-media/press-releases/european-supervisory-authorities-designate-critical-ict-third-party-providers-under-digital
12. Anthropic, "Anthropic to sign the EU Code of Practice", 21 July 2025. https://www.anthropic.com/news/eu-code-practice
13. Claude Help Center, "How Claude marks AI-generated content". https://support.claude.com/en/articles/16266773-how-claude-marks-ai-generated-content
14. Anthropic, text watermark announcement, 14 August 2026, updated 1 September 2026. https://www.anthropic.com/news/claude-text-watermark
15. Anthropic, "Anthropic achieves ISO 42001 certification for responsible AI", 13 January 2025. https://www.anthropic.com/news/anthropic-achieves-iso-42001-certification-for-responsible-ai
16. Claude, regional compliance page. https://claude.com/regional-compliance
17. Claude Platform Docs, "Data residency" and "Claude Platform on AWS". https://platform.claude.com/docs/en/manage-claude/data-residency and https://platform.claude.com/docs/en/build-with-claude/claude-platform-on-aws
18. Claude Platform Docs, "API and data retention". https://platform.claude.com/docs/en/manage-claude/api-and-data-retention
19. Claude Platform Docs, "Claude in Amazon Bedrock". https://platform.claude.com/docs/en/build-with-claude/claude-in-amazon-bedrock
20. Anthropic, "Donating the Model Context Protocol and establishing the Agentic AI Foundation", 9 December 2025. https://www.anthropic.com/news/donating-the-model-context-protocol-and-establishing-of-the-agentic-ai-foundation
21. Anthropic Commercial Terms, Data Processing Addendum and Service Specific Terms, searched for DORA on 14 October 2026. https://www.anthropic.com/legal/commercial-terms
22. AWS and Google Cloud, DORA compliance pages. https://aws.amazon.com/compliance/dora/ and https://cloud.google.com/security/compliance/dora
23. Allianz, media release of 9 January 2026. https://www.allianz.com/en/mediacenter/news/media-releases/260109-allianz-and-anthropic-forge-global-partnership.html
24. Anthropic, "Barclays scales Claude to upgrade operations and improve client experience", 1 October 2026. https://www.anthropic.com/news/barclays-scales-claude
