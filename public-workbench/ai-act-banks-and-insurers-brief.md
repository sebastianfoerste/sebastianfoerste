# The AI Act's high-risk timetable: what the Act requires of banks and insurers, and why the compliance work is a case for Claude

*Executive brief for chief operating officers, chief risk officers and general counsel, by Sebastian Förste. Independent work, not reviewed or endorsed by Anthropic. Not legal advice.*

## Summary for credit and insurance

Two Annex III high-risk uses concern the core business of banks and of life and health insurers: evaluating the creditworthiness of natural persons or establishing their credit score, and risk assessment and pricing in relation to natural persons in life and health insurance (Annex III, point 5(b) and (c)). Other Annex III uses, such as recruitment and worker management (point 4), reach any bank or insurer as they reach any employer. Under Article 113 of the consolidated AI Act (text of 27 July 2026), the classification rules, requirements and provider and deployer obligations in Chapter III, Sections 1 to 3 (Articles 6 to 27), apply to Annex III systems from 2 December 2027. AI literacy and customer-facing transparency duties apply already. Use the time to build, inside existing governance, a record a supervisor can examine.

## What the Act requires

**Classification.** Annex III systems are high-risk (Article 6(2)), though point 5(b) excludes financial fraud detection. Under Article 6(3), an Annex III system that meets one of four listed conditions is not high-risk if it poses no significant risk of harm, but one that profiles natural persons always is. Profiling is any automated processing of personal data to evaluate personal aspects of a natural person, such as their economic situation or health (Article 3(52) AI Act; Article 4(4) GDPR). A provider relying on Article 6(3) must document that assessment before placing the system on the market or putting it into service (Article 6(4)).

**Role.** A bank that develops a scoring model and puts it into service for its own use will normally be both provider and deployer (Article 3(3), (4) and (11)).

**Providers** must meet the requirements of Articles 8 to 15, run a quality management system, keep documentation and, when under their control, logs, complete conformity assessment, issue an EU declaration of conformity, affix the CE marking to indicate conformity and register the system (Article 16). For Annex III point 5 systems, that assessment is internal control without a notified body (Article 43(2)). For financial institutions, complying with internal-governance rules under Union financial services law is deemed to fulfil the quality management duty, except for risk management, post-market monitoring and serious-incident reporting (Article 17(4) and (1)(g) to (i)).

**Deployers** must use the system according to its instructions, assign human oversight to people with the necessary competence, training and authority, and keep the logs under their control for at least six months unless Union or national law provides otherwise (Article 26(1), (2) and (6)). They must monitor its operation on the basis of the instructions for use, informing the provider where relevant. Where they have reason to consider that use as instructed may present a risk (Article 79(1)), they must inform the provider or distributor and the market surveillance authority without undue delay and suspend use. They must report serious incidents immediately to the provider, then to the importer or distributor and the market surveillance authorities (Article 26(5)). For financial institutions, internal-governance compliance counts as the monitoring duty, and logs sit within financial services documentation (Article 26(5) and (6), second subparagraphs).

Deployers that make or assist decisions about natural persons must tell those persons that a high-risk system is used (Article 26(11)). Before first use of a point 5(b) or (c) system, deployers must carry out a fundamental rights impact assessment (in similar cases, they may rely on earlier ones) and notify the market surveillance authority of the results (Article 27(1) to (3)). They may be exempt from notifying where an authority has authorised the system, for exceptional reasons such as public security, while its conformity assessment is under way (Articles 27(3) and 46(1)).

The Act does not define "financial institution"; insurers should confirm that these rules reach them.

**Supervision.** Where the use is directly connected with providing financial services, the market surveillance authority is the national financial supervisor, though the Member State may, in appropriate circumstances and provided that coordination is ensured, identify another authority (Article 74(6) and (7)). Breaches of Article 16 or Article 26 can lead to fines of up to EUR 15 million or 3% of total worldwide annual turnover for the preceding financial year, whichever is higher (Article 99(4)); for small and medium-sized enterprises and small mid-cap enterprises, whichever is lower (Article 99(6) and (6a)).

## When each duty applies

The general application date is 2 August 2026 (Article 113, second paragraph). The later date of 2 December 2027 for Annex III systems covers Chapter III, Sections 1 to 3, except Article 6(5) (Article 113, third paragraph, point (c)). Point (c) does not name Section 5 (Articles 40 to 49, including conformity assessment and registration) or Articles 72 and 73 (post-market monitoring and serious incidents). Read literally, those apply from the general date, earlier than the Section 3 duties that refer to them; counsel should settle that point.

Two further duties apply already. Under Article 4, in the consolidated text, providers and deployers must take measures to support the AI literacy of staff and others operating or using AI systems on their behalf, without having to guarantee any individual's level; Chapter I applies from 2 February 2025 (Article 113, third paragraph, point (a)). Under Article 50(1), applicable since 2 August 2026, providers must ensure that people interacting directly with their AI systems are informed of that, unless it is obvious.

Apart from the Article 5 prohibitions, the Regulation applies to operators of high-risk systems placed on the market or put into service before the Chapter III application date only if their designs change significantly from that date (Article 111(2)). Read literally, Articles 4 and 50 would then also apply in respect of such a system only after a significant change. Because Article 113 dates Chapter III by Section, which date counts is open too. Counsel should settle both points; either way, each later model change calls for a recorded significance assessment.

## The next 90 days

1. **Inventory.** List every AI system in an Annex III use, point 5(b) and (c) systems first, and record your role in each.
2. **Classification record.** Write down the Article 6(3) analysis for each system and whether it profiles.
3. **Change rule.** Decide who judges whether a design change is significant under Article 111(2), and on what evidence.
4. **Governance map.** Map Article 17(1) to existing governance and plan the three items the deeming rule leaves open.
5. **Pilot impact assessment.** Draft the Article 27 assessment for one live use and test it with the people who would sign it.
6. **Oversight, literacy and assistants.** Name the oversight staff, check them against Article 26(2), record the Article 4 measures and test each customer-facing assistant against Article 50(1).

## Why this is a case for Claude

Most of that list is drafting against the provisions above, which a language model can help with if a tool that cites the law supplies the rules and named people decide.

I have built the tool side of that division. [eu-ai-act-classifier](https://github.com/sebastianfoerste/eu-ai-act-classifier) takes a structured system profile and returns the risk tier, cited obligations, application dates and a review status per item. For its synthetic example of a bank deploying a third-party credit-scoring model, it returns high-risk under Annex III point 5(b), lists Articles 26 and 27 and flags the impact assessment for review. [eu-reg-mcp](https://github.com/sebastianfoerste/eu-reg-mcp) exposes that classifier to an AI assistant through the Model Context Protocol (MCP) and labels each classification result as a candidate pending human legal review.

Anthropic open-sourced MCP in November 2024 as "a new standard for connecting AI assistants to the systems where data lives", with local MCP server support in the Claude Desktop apps ([Anthropic](https://www.anthropic.com/news/model-context-protocol)). In a bank, Claude could read the documentation, fill the classifier's profile, call the tool and draft the inventory entry around a result it quotes with its source. Before the firm relies on or files any of it, a compliance officer should confirm the facts and the legal characterisation, and counsel should sign off.

Using a general-purpose AI system to credit-score individuals or price life or health policies would be a different case: a firm that changes the intended purpose of such a system so that it becomes high-risk is treated as its provider (Article 25(1)(c)). Under the Digital Operational Resilience Act, a bank or insurer within its scope that uses information and communication technology (ICT) services under contractual arrangements remains fully responsible for compliance with, and the discharge of, all obligations under that Regulation and applicable financial services law (Article 28(1)(a)); a model provider will normally belong in the existing ICT third-party risk process.

As of 14 October 2026

## Sources

- Regulation (EU) 2024/1689 (Artificial Intelligence Act), cited in its consolidated text of 27 July 2026. The ELI identifies the act as published on 12 July 2024, before later amendments: http://data.europa.eu/eli/reg/2024/1689/oj
- Regulation (EU) 2016/679 (General Data Protection Regulation), Article 4(4). http://data.europa.eu/eli/reg/2016/679/oj
- Regulation (EU) 2022/2554 (Digital Operational Resilience Act), Article 28(1)(a). http://data.europa.eu/eli/reg/2022/2554/oj
- Anthropic, "Introducing the Model Context Protocol", 25 November 2024. https://www.anthropic.com/news/model-context-protocol
- The classifier's [regulatory claim ledger](https://github.com/sebastianfoerste/eu-ai-act-classifier/blob/e1eda98b8e73803973a9445d981f291c5082ce16/docs/REGULATORY_CLAIM_LEDGER.md) at commit e1eda98, which records the application dates the classifier encodes and the items that still need review. The ledger and the classifier's timeline also attribute those dates to an amending regulation; this brief cites the consolidated text only.
