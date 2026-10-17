# Crypto Partnership Agreements Playbook

This is a public-safe playbook for the in-house legal team of a centralised crypto-asset exchange negotiating with token issuers, referral partners, staking operators and integration partners. For each recurring clause it sets a preferred position, a fallback, a walk-away point and the approving role, and it links the clauses to the EU and US federal provisions a reviewer checks before signature.

As of 14 October 2026. The exchange is generic and every example is synthetic. The playbook contains no client material and is not legal advice.

## How to read the tables

- **Preferred position**: the exchange's first draft.
- **Fallback**: the furthest concession, available once the approver signs off in writing.
- **Walk-away**: terms the exchange does not sign. Moving one requires a versioned playbook change; a single deal cannot move it.
- **Approver**: Deputy General Counsel (Deputy GC), Chief Compliance Officer (CCO), Money Laundering Reporting Officer (MLRO), Head of Listings, Chief Information Security Officer (CISO), Chief Financial Officer (CFO) or Data Protection Officer (DPO).
- **[EU-2]** and similar IDs point to the jurisdiction checkpoints behind a position.

## Intake model

A field the business cannot answer stays `"unknown"`, and an unknown material field sends the matter to review. The `supportsCriticalOrImportantFunction` field applies wherever a counterparty may provide information and communication technology (ICT) services (section 4), as an issuer running node infrastructure for the exchange may.

```json
{
  "matterId": "SYN-2026-0142",
  "agreementType": "token_listing",
  "counterparty": "Example Chain Foundation",
  "counterpartyRole": "person_seeking_admission",
  "financialInstrumentAnalysis": "pending",
  "usSecuritiesAnalysis": "pending_us_counsel",
  "whitePaper": { "draftedBy": "issuer", "published": false },
  "usPersonsInScope": "unknown",
  "supportsCriticalOrImportantFunction": "unknown",
  "requestedDeviations": ["guaranteed listing date", "fee linked to trading volume"]
}
```

## 1. Token listing and listing-incentive agreements

Classification comes first: MiCAR (Regulation (EU) 2023/1114 on markets in crypto-assets) does not apply to crypto-assets that qualify as financial instruments [EU-1], and the US analysis runs separately [US-1, US-4].

| Clause | Preferred position | Fallback | Walk-away | Approver |
| --- | --- | --- | --- | --- |
| Listing fee | Fixed fee from the published fee policy; admission only after the suitability assessment, with no duty to list [EU-5] | Milestone instalments; non-binding target date | Fee linked to price, volume or a promised listing; guaranteed admission; fee in the listed token without CCO conflict clearance [EU-5] | Head of Listings, CFO, CCO |
| Liquidity and market making | Issuer's own independent market maker, which owes quoting obligations to the exchange and supplies surveillance data | Three-party letter with spread and depth targets | The exchange dealing on own account on its platform [EU-5]; price-support or volume targets [EU-6] | CCO |
| Incentive campaigns | Issuer funds; the exchange writes all copy, marked as marketing and consistent with the white paper [EU-3] | Issuer copy after exchange approval | Campaign before a required white paper is published [EU-3]; holding-time rewards on e-money or asset-referenced tokens [EU-4]; undisclosed paid promotion [US-3] | CCO |
| White paper responsibility | Issuer, as person seeking admission, draws up, notifies, publishes and updates it [EU-2] | Exchange draws it up under the issuer's written undertaking to supply all necessary information, with warranty and indemnity [EU-2] | Exchange takes it on without that undertaking, or relies on excluding liability towards holders [EU-2] | Deputy GC |
| Information duties | Issuer gives a need-to-know group under insider controls advance notice of upgrades, forks, supply changes, security incidents and regulatory action, limited to what the exchange needs for operational handling and without prejudice to its duty to inform the public of inside information as soon as possible [EU-6] | Notice no later than public disclosure | No duty to report incidents or supply changes | Head of Listings, CCO |
| Suspension and delisting | Exchange right under the conditions in its operating rules, including for liquidity or disclosure failures [EU-5]; no refund | Notice period for purely commercial delisting | Issuer consent or cure period on regulatory, security or market-abuse grounds | Head of Listings, Deputy GC |

Where MiCAR Art. 143(2)(b) covers a crypto-asset admitted before 30 December 2024 (EU-2 status), renewals should oblige the issuer to supply the white paper or the information needed to draw it up. Anyone other than the issuer needs the issuer's written consent to seek admission of an e-money token [EU-4].

## 2. Referral, affiliate and introducing-partner agreements

A partner that takes orders or gives personalised recommendations may itself be providing a crypto-asset service [EU-7].

| Clause | Preferred position | Fallback | Walk-away | Approver |
| --- | --- | --- | --- | --- |
| Partner role and checks | Introduction only: no orders, advice, custody or funds; the exchange performs all due diligence [EU-7, US-2] | Reliance on a supervised obliged entity that supplies copies on request; responsibility stays with the exchange [EU-8] | Partner takes orders, funds or keys, or gives personalised recommendations [EU-7, US-5]; reliance on a partner in a high-risk third country [EU-8] | CCO, MLRO |
| Marketing communications | Exchange-approved creative only, marked as marketing and carrying a risk warning [EU-3]; disclosure of the paid relationship as exchange policy | Partner drafts after pre-approval; takedown within 24 hours | "Risk-free" or return claims; promoting a token while holding an undisclosed position [EU-6]; issuer-paid content without disclosing the payment [US-3] | CCO |
| Target jurisdictions | Written list of permitted jurisdictions; geo-restricted links | Additions after CCO sign-off | Soliciting EU clients for a non-EU group entity that relies on client initiative [EU-7]; US persons while the US analysis is open [US-1, US-2] | CCO, Deputy GC |
| Compensation | Fixed fee per verified customer, or a share of exchange fees; US partners: fixed fee only [US-2] | Tiered share with cap and fraud clawback; for US partners only with US counsel's approval [US-2] | Pay per trade in a specific token, or linked to leverage or customer losses | CFO, CCO |
| Sub-affiliates | Not permitted | Named and approved in writing, with flow-down and partner liability | Unidentified networks, or sub-affiliates outside the jurisdiction list | CCO |

## 3. Staking-as-a-service

Here the exchange offers staking to customers through a validator operator. The articles of MiCAR do not use the word "staking", so the review identifies the crypto-asset services involved, starting with custody [EU-9]. For the US position, see [US-7].

| Clause | Preferred position | Fallback | Walk-away | Approver |
| --- | --- | --- | --- | --- |
| Custody of staked assets | Exchange custody; the operator holds signing keys only; withdrawal credentials point to exchange addresses [EU-9] | Operator custody only if it is authorised for custody and customers are told [EU-9] | Operator controls withdrawal keys, or holds customer assets with its own [EU-9] | CISO, CCO |
| Validator selection | Exchange approves validators, client diversity and hosting limits [EU-10] | Operator selects within written criteria; exchange veto | Undisclosed validators or hosting; a single host [EU-10] | CISO |
| Slashing losses | Operator indemnifies all slashing and penalties its operation causes, backed by insurance | Fault-based indemnity capped at a multiple of annual fees | Slashing passed to customers without disclosure; no operator liability for its own key management | CFO, Deputy GC |
| Reward pass-through and fees | Actual protocol rewards net of a published fee [EU-3] | Indicative rate labelled as variable | Guaranteed or exchange-subsidised yield; holding-time rewards on e-money or asset-referenced tokens [EU-4] | CFO, CCO |
| Unbonding and withdrawals | Exits within an agreed time; full exit on termination or operator insolvency [EU-9] | Exchange liquidity buffer at its discretion, with a disclosed queue | Delays beyond protocol periods; undisclosed lock-ups | CFO, CISO |
| Customer disclosure | Exchange controls terms on slashing, unbonding, reward variability, operator identity and fees [EU-3] | Operator supplies technical text for approval | Operator-branded yield marketing to exchange customers | CCO |

A custodian is liable to its clients for the loss of any crypto-assets, or of the means of access to them, as a result of an incident attributable to it, up to the lost crypto-asset's market value when the loss occurred. An event the custodian shows occurred independently of its service or operations is not attributable [EU-9]. Which side of that line a slashing event falls on depends on the facts, so the operator indemnity should sit back-to-back with the exchange's exposure to customers.

## 4. Application programming interface (API), broker and white-label integrations

For an exchange authorised under MiCAR, the contractual minimums of DORA (Regulation (EU) 2022/2554 on digital operational resilience for the financial sector) apply where it uses ICT services, as defined in DORA Art. 3(21), that a partner provides [EU-10, EU-11]. Whether a broker or execution partner provides such services depends on the arrangement.

| Clause | Preferred position | Fallback | Walk-away | Approver |
| --- | --- | --- | --- | --- |
| API access and rate limits | Revocable keys under published terms; suspension for security, market-integrity or legal reasons without liability [EU-6] | Dedicated rate tier; notice of non-emergency changes | Guaranteed unthrottled access | CISO |
| Data use | Data used only for the integration, under a written processing agreement where needed | Aggregated, non-identifying analytics | Partner trading on order-flow data; resale or model training | CCO, DPO |
| Service levels | Quantitative and qualitative targets for availability, latency and response, with credits [EU-11] | Termination after repeated misses instead of credits | No service level descriptions (Art. 30(2)(e)); for a critical or important function, no precise quantitative and qualitative performance targets (Art. 30(3)(a)) [EU-11] | CISO |
| ICT contractual minimums | One written contract with every Art. 30(2) DORA element, plus Art. 30(3) for critical or important functions [EU-11] | Standard clauses from public authorities, where they exist [EU-11] | Any Art. 30(2) element missing, or, for a critical or important function, any Art. 30(3) element missing [EU-11] | CISO, Deputy GC |
| Sub-outsourcing | Prior written approval for subcontracting critical or important functions; named locations [EU-10, EU-11] | Notice with objection and termination rights | Open-ended chains or undisclosed third-country subcontractors [EU-10] | CISO |
| Audit | Unrestricted access, inspection and audit for the exchange, its appointee and the authority [EU-11] | Alternative assurance where other clients' rights are affected [EU-11] | Certificates only, for a critical or important function [EU-11] | CISO, CCO |
| Termination and exit | DORA termination grounds, outsourcing termination right, transition period, data return [EU-10, EU-11] | Transition capped at twelve months | No transition period for a critical or important function [EU-11] | Deputy GC, CFO |
| Transfer information | Complete originator and beneficiary data before or with each transfer; respondent due diligence [EU-12] | None; as originator's provider, the exchange may not start or execute a transfer before it fully complies with the information rules [EU-12] | Non-EU respondent neither licensed nor registered (exchange policy) | MLRO |

## Jurisdiction checkpoints

"Applies" means applicable on 14 October 2026 on the face of the official text listed under "Sources and limits". For US rows, "In force" means in force at release point 119-73 of the United States Code.

| ID | Checkpoint | Provision verified | Status |
| --- | --- | --- | --- |
| EU-1 | Financial instruments are outside MiCAR | MiCAR Art. 2(4)(a) | Applies from 30 December 2024; Titles III and IV from 30 June 2024 (Art. 149) |
| EU-2 | White paper for admission unless Art. 5(4) applies; duty transferable to the platform in writing; contractual exclusion of liability towards holders has no effect; where the platform prepared the white paper under Art. 5(3), a person seeking admission that misinforms it is also responsible | MiCAR Art. 5(1), (3), (4), 12(1), 15(1) to (3) | Applies. Crypto-assets other than asset-referenced and e-money tokens admitted before 30 December 2024: by 31 December 2027 the operator must ensure that a white paper, where required, is drawn up, notified and published, and updated under Art. 12 (Art. 143(2)(b)) |
| EU-3 | Marketing identifiable, fair, clear, not misleading, consistent with the white paper and not before it; risk warnings; published fees | MiCAR Art. 7(1), (2), 66(2) to (4) | Applies |
| EU-4 | No interest, including holding-time benefits from third parties, on asset-referenced or e-money tokens; issuer consent for others seeking admission of an e-money token | MiCAR Art. 40, 50, 48(1) | Applies |
| EU-5 | Operating rules on admission, fees, liquidity and suspension; suitability assessment; no own-account dealing; conflicts | MiCAR Art. 76(1), (2), (5), 72(1) | Applies |
| EU-6 | Market abuse rules from the admission request; inside information; manipulation, including opinions after undisclosed positions; detection | MiCAR Art. 86(1), 88(1), 91, 92(1) | Applies |
| EU-7 | Authorisation for crypto-asset services, including order transmission, advice and placing; solicitation defeats the exclusive-initiative exemption | MiCAR Art. 59(1); 3(1)(16), (22) to (24); 61(1) | Applies; the Art. 143(3) transition ended by 1 July 2026 |
| EU-8 | Reliance on third-party due diligence keeps ultimate responsibility with the relying entity; no reliance on third parties established in high-risk third countries, unless national law exempts an EU obliged entity's branches and majority-owned subsidiaries that fully comply with group-wide policies | Directive (EU) 2015/849 Art. 25, 26, 27 | National law; Regulation (EU) 2024/1624 Art. 18 and 48, with a group exception in Art. 48(4), from 10 July 2027 (Art. 90) |
| EU-9 | Custody agreement; segregation; prompt return; liability for attributable incidents capped at market value; authorised sub-custodians | MiCAR Art. 3(1)(17), 75(1), (6) to (9) | Applies |
| EU-10 | DORA covers crypto-asset service providers: full responsibility, pre-contract and concentration assessment, subcontracting, audit, termination, exit | DORA Art. 2(1)(f), 3(21), (22), 28(1)(a), (4), (6) to (8), 29 | Applies from 17 January 2025 (Art. 64) |
| EU-11 | Written contract with Art. 30(2) elements and, for critical or important functions, Art. 30(3); MiCAR outsourcing terms | DORA Art. 30(1) to (4); MiCAR Art. 73(1), (3) | Applies |
| EU-12 | Transfer information; self-hosted address checks above EUR 1 000; non-EU correspondent due diligence | Regulation (EU) 2023/1113 Art. 14(1), (2), (4), (5), (8), 16; Directive (EU) 2015/849 Art. 19b(1) | Regulation from 30 December 2024 (Art. 40); Directive through national law |
| US-1 | "Security" includes "investment contract"; sales need an effective registration statement unless exempt; transactions on unregistered exchanges | 15 U.S.C. 77b(a)(1), 78c(a)(10), 77e(a), 77d(a), 78c(a)(1), 78e | In force. Payment stablecoin carve-out (Pub. L. 119-27 § 17(c), (d)) effective on the earlier of 18 January 2027 or 120 days after final regulations |
| US-2 | Brokers and dealers may not effect, or induce or attempt to induce, securities transactions unless registered | 15 U.S.C. 78c(a)(4)(A), (5)(A), 78o(a)(1) | In force |
| US-3 | Publicity describing a security for pay from an issuer, underwriter or dealer must disclose the payment and its amount | 15 U.S.C. 77q(b) | In force |
| US-4 | "Commodity" defined; leveraged or margined retail commodity transactions | 7 U.S.C. 1a(9), 2(c)(2)(D) | In force; stablecoin carve-out (§ 17(f)) on the US-1 timing |
| US-5 | Money transmitting business registration and agent lists; State law preserved; knowingly running an unlicensed business, including an unregistered one, is an offence | 31 U.S.C. 5330(a)(1), (a)(3), (c)(1), 5312(a)(2)(R); 18 U.S.C. 1960(a), (b)(1) | In force |
| US-6 | Only permitted issuers may issue payment stablecoins; digital asset service providers may not offer or sell other payment stablecoins to persons in the United States, subject to exceptions; no issuer interest or yield solely for holding, use or retention | 12 U.S.C. 5901(7), (22), (23), 5902(a), (b)(1), 5903(a)(11) | Codified; effective on the US-1 timing; offer-and-sale restriction from 18 July 2028 |
| US-7 | Staking programmes | None cited | Confirm the current agency position with US counsel |

## Red flags and escalation triggers

Escalate before negotiation continues:

- financial-instrument or US securities status assumed while the analysis is open (Deputy GC);
- a guaranteed listing, or a fee linked to price or volume (Head of Listings);
- an exchange entity trading or funding liquidity in a token it lists (CCO);
- holding-time rewards on e-money or asset-referenced tokens, or holder rewards funded by a payment stablecoin issuer [EU-4, US-6] (CCO);
- a partner or operator handling customer orders, funds, keys or withdrawal credentials (CISO, CCO);
- an ICT counterparty refusing subcontracting controls or any Art. 30(3) DORA term, such as audit or exit support, for a critical or important function (CISO, Deputy GC);
- a counterparty in a high-risk third country (MLRO);
- a material intake field left "unknown" (owner of that field).

## Review gate and output

No matter reaches signature on self-serve approval while a walk-away term remains, a trigger is open, or a cited checkpoint is unchecked for the counterparty's jurisdictions.

```json
{
  "matterId": "SYN-2026-0142",
  "playbook": { "name": "crypto-partnerships", "version": 3 },
  "draftDigest": "sha256:<digest of the reviewed draft>",
  "risk": "escalate",
  "approvalRequired": ["Head of Listings", "CFO", "Deputy GC", "CCO", "CISO"],
  "blockers": [
    "Remove the guaranteed listing date.",
    "Replace the volume-linked fee with the published fixed fee."
  ],
  "openPoints": [
    "Financial-instrument analysis pending (Deputy GC).",
    "US securities analysis pending with US counsel (Deputy GC).",
    "US persons in scope: unknown (CCO).",
    "Support for a critical or important function: unknown (CISO)."
  ],
  "changes": [
    { "clause": "listing_fee", "issue": "guaranteed listing date", "decision": "pending" },
    { "clause": "listing_fee", "issue": "volume-linked fee", "decision": "pending" }
  ],
  "export": "blocked_until_every_change_is_decided"
}
```

## Playbook versioning

Each clause position is a versioned rule holding the preferred position, fallbacks, walk-away terms, approver and source references. A version becomes active only on recorded approval, and each review records the version applied and a digest of the draft read. A redline stays pending until a lawyer decides it, export stays blocked until every change is decided, and the counterparty's original draft is kept unchanged.

## Sources and limits

Legal statements trace to copies of the official texts read on 14 October 2026 (EU texts from the Publications Office of the European Union; the United States Code from the Office of the Law Revision Counsel, release point 119-73, last updated between 3 December 2025 and 26 March 2026): MiCAR (Regulation (EU) 2023/1114, text dated 9 January 2024), DORA (Regulation (EU) 2022/2554), Regulation (EU) 2023/1113, Directive (EU) 2015/849 (consolidated to 30 December 2024) and Regulation (EU) 2024/1624. Later amendments are not reflected. Federal regulations, agency statements and case law were not consulted. Investment-contract status (US-1), referral pay (US-2), commodity classification (US-4), crypto-asset money transmission (US-5) and staking (US-7) turn on them: confirm the current agency position with US counsel.

## Human review notice

This playbook is a workflow artefact for a generic exchange. It does not approve agreements, classify tokens or constitute legal advice. Final decisions require a qualified lawyer or the accountable internal owner.
