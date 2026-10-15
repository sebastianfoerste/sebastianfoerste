# The AI Act's high-risk timetable for banks and insurers, and why the compliance work is a case for Claude

*Executive brief for chief operating officers, chief risk officers and general counsel, by Sebastian Förste. Independent work, not reviewed or endorsed by Anthropic. Not legal advice.*

## The decision and the dates

Build, inside existing governance, a record of your AI systems that a supervisor can examine, starting with the 90-day list below.

Two high-risk uses in Annex III to the AI Act concern the core business of banks and of life and health insurers (point 5(b) and (c)):

- evaluating the creditworthiness of natural persons or establishing their credit score, other than to detect financial fraud;
- risk assessment and pricing in relation to natural persons in life and health insurance.

Other Annex III uses, such as recruitment and worker management, reach any bank or insurer as they reach any employer.

Article 113 sets the dates (consolidated text of 27 July 2026, cited throughout):

- **2 August 2026:** the general application date.
- **2 December 2027:** the classification rules, requirements and provider and deployer obligations in Chapter III, Sections 1 to 3, apply to Annex III systems.
- **Already applying:** AI literacy measures for those operating or using AI systems for the firm (Article 4), and the provider duty to ensure that people interacting directly with an AI system are told so, unless it is obvious (Article 50(1)).

## What the Act requires

**Classification.** Under Article 6(3), an Annex III system that meets one of four listed conditions is not high-risk if it poses no significant risk of harm, but one that profiles natural persons, in the GDPR sense, always is.

**Roles.** A bank that develops a scoring model for its own use will normally be both provider and deployer.

**Providers** must meet the Act's requirements for high-risk systems and, among other duties, run a quality management system, complete a conformity assessment (for these systems, internal control without a notified body) and register the system (Article 16). A financial institution that complies with its internal-governance rules under Union financial services law is deemed to fulfil the quality management duty, except for risk management, post-market monitoring and serious-incident reporting (Article 17(4)).

**Deployers** must use the system according to its instructions, assign human oversight to people with the necessary competence, training and authority, monitor its operation, and keep the logs under their control for at least six months unless Union or national law provides otherwise. Those that make or help make decisions about people must tell them that a high-risk system is used (Article 26). If deployers have reason to consider that use as instructed may present a risk in the Act's sense, they must inform the provider or distributor and the market surveillance authority without undue delay and suspend use. Serious incidents must be reported immediately, first to the provider, then to the importer or distributor and the market surveillance authorities. For financial institutions, internal-governance compliance counts as the monitoring duty, and logs sit within financial services documentation.

**Impact assessment.** Before first use of a point 5(b) or (c) system, deployers must carry out a fundamental rights impact assessment and notify the market surveillance authority of the results (Article 27).

**Supervisor and fines.** For a financial institution's use directly connected with its financial services, the national financial supervisor will normally be the market surveillance authority (Article 74(6)). Breaches of Article 16 or 26 can lead to fines of up to EUR 15 million or 3% of total worldwide annual turnover for the preceding financial year, whichever is higher (Article 99(4)); for small and medium-sized and small mid-cap enterprises, whichever is lower. The Act does not define "financial institution"; insurers should confirm that the financial-institution rules reach them.

## Points for counsel

- **Possibly earlier duties.** The later date covers neither Chapter III, Section 5, which includes conformity assessment and registration, nor post-market monitoring and serious incidents (Articles 72 and 73). Read literally, those apply from the general date, earlier than the Section 3 duties that refer to them.
- **Systems already in use.** Apart from the Article 5 prohibitions, the Act applies to operators of high-risk systems placed on the market or put into service before the Chapter III application date only if their designs change significantly from that date (Article 111(2)). Read literally, Articles 4 and 50 would then also apply in respect of such a system only after a significant change, and which Chapter III date counts is open.

## The next 90 days

1. **Inventory.** List every AI system in an Annex III use, point 5(b) and (c) first, with your role.
2. **Classification.** Record each system's analysis, including whether it profiles.
3. **Change rule.** Decide who judges whether each design change is significant, on what evidence, and record it.
4. **Governance map.** Map the quality management duty to existing governance; plan the three excepted items.
5. **Impact assessment.** Draft one for a live use and test it with those who would sign it.
6. **People and assistants.** Name oversight staff, record AI literacy measures, test customer-facing assistants against Article 50(1).

## Why this is a case for Claude

Most of that list is drafting, which a language model can help with if a tool that cites the law supplies the rules and named people decide.

I have built the tool side. [eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier) takes a structured system profile and returns the risk tier, cited obligations, application dates and a review status per item. For its synthetic example of a bank deploying a third-party credit-scoring model, it returns high-risk under Annex III point 5(b), lists Articles 26 and 27 and flags the impact assessment for review. [eu-reg-mcp](https://github.com/sebastianfoerste/eu-reg-mcp) exposes that classifier to an AI assistant through the Model Context Protocol (MCP) and labels each classification result as a candidate pending human legal review.

Anthropic open-sourced MCP in November 2024 as "a new standard for connecting AI assistants to the systems where data lives", with local MCP server support in the Claude Desktop apps ([Anthropic](https://www.anthropic.com/news/model-context-protocol)). In a bank, Claude could read the documentation, fill the classifier's profile, call the tool and draft the inventory entry around a result it quotes with its source. Before the firm relies on or files any of it, a compliance officer should confirm the facts and the legal characterisation, and counsel should sign off.

Using a general-purpose AI system to credit-score individuals or price life or health policies is a different case: a firm that changes such a system's intended purpose so that it becomes high-risk is treated as its provider (Article 25(1)(c)). Under the Digital Operational Resilience Act, a bank or insurer in scope that uses information and communication technology (ICT) services under contractual arrangements remains fully responsible for compliance with, and the discharge of, all obligations under that Act and applicable financial services law (Article 28(1)(a)); a model provider will normally belong in the existing ICT third-party risk process.

As of 15 October 2026

## Sources

- Regulation (EU) 2024/1689 (Artificial Intelligence Act), cited in its consolidated text of 27 July 2026. The ELI identifies the act as published on 12 July 2024, before later amendments: http://data.europa.eu/eli/reg/2024/1689/oj. Provisions relied on beyond those cited in the text: Article 3(3), (4), (11) and (52); Article 6(2); Article 16(a), (c), (f) and (i); Article 17(1)(g) to (i); Article 26(1), (2), (5), (6) and (11); Article 27(1) to (3); Article 43(2); Article 74(7); Article 79(1); Article 99(6) and (6a); Article 113, second paragraph and third paragraph, points (a) and (c).
- Regulation (EU) 2016/679 (General Data Protection Regulation), Article 4(4). http://data.europa.eu/eli/reg/2016/679/oj
- Regulation (EU) 2022/2554 (Digital Operational Resilience Act), Article 28(1)(a). http://data.europa.eu/eli/reg/2022/2554/oj
- Anthropic, "Introducing the Model Context Protocol", 25 November 2024. https://www.anthropic.com/news/model-context-protocol
- The classifier's [regulatory claim ledger](https://github.com/sebastianfoerste/eu-ai-act-classifier/blob/e1eda98b8e73803973a9445d981f291c5082ce16/docs/REGULATORY_CLAIM_LEDGER.md) at commit e1eda98, which records the application dates the classifier encodes and the items that still need review. The ledger and the classifier's timeline also attribute those dates to an amending regulation; this brief cites the consolidated text only.
