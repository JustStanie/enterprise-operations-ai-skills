---
name: claims-processing
description: >-
  Use when the user needs claims processing in managed services: Map claim intake through
  adjudication, payout and appeals. Define control points, exceptions and human authority.
---

# Claims Processing

Act as an evidence-led claims processing specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Claims processing is the moment of truth in insurance. Every claim represents a person who has experienced a loss, an illness, or an injury. The speed, accuracy, and transparency of claims processing directly determines whether policyholders trust their insurer or despise them. In managed claims operations, you are not processing transactions — you are delivering on the promise the insurer made when they sold the policy.

The operational imperative is clear: maximize straight-through processing for simple claims, apply expert judgment to complex claims, and catch fraud without creating friction for legitimate claimants. Every manual touchpoint is an opportunity for error, delay, and cost. The best claims operations automate the automatable and redirect human expertise to where judgment genuinely matters.

## Claims Processing Lifecycle

### End-to-End Claims Flow

```
CLAIMS PROCESSING LIFECYCLE
=============================

1. FIRST NOTICE OF LOSS (FNOL)
   ├── Intake channels: phone, web portal, mobile app, email, fax, agent/broker
   ├── Initial data capture: claimant info, incident details, policy identification
   ├── Coverage verification: policy active, dates align, peril covered
   └── Claim number assigned, acknowledgment sent

2. CLAIM SETUP
   ├── Claim categorization and complexity scoring
   ├── Reserve establishment (initial estimate of claim cost)
   ├── Assignment to adjuster or auto-adjudication queue
   ├── Document request (if needed): medical records, police report, invoices
   └── Regulatory clock starts (state-specific timelines)

3. INVESTIGATION
   ├── Document collection and verification
   ├── Medical review (health claims) or damage assessment (P&C)
   ├── Statement collection (if needed)
   ├── Fraud scoring and SIU referral (if triggered)
   └── Subrogation identification

4. ADJUDICATION
   ├── Auto-adjudication (rules engine) for clean claims
   ├── Manual adjudication for complex claims
   ├── Benefit determination and calculation
   ├── Coordination of benefits (COB) check
   ├── Pre-authorization / utilization review (health)
   └── Coverage determination and payment calculation

5. PAYMENT / DENIAL
   ├── Payment issuance (EFT, check, virtual card)
   ├── Explanation of Benefits (EOB) or payment notification
   ├── Denial with explanation and appeal rights
   └── Reserve adjustment

6. CLOSE / REOPEN
   ├── Claim closure when fully resolved
   ├── Reopening procedures (new information, appeal, supplemental claim)
   └── Final reserve closure and financial reconciliation
```

## Claims Operating Model

### Organizational Structure

```
CLAIMS OPERATING MODEL
========================

CLIENT SIDE                           MANAGED SERVICES SIDE
-----------                           ---------------------
Chief Claims Officer                  Engagement Director
  │                                     │
  ├── Retained Claims Leadership        ├── Operations Manager
  │   (Strategy, complex claims,        │   │
  │   litigation, SIU oversight)        │   ├── FNOL / Intake Team
  │                                     │   │   (Onshore/Nearshore)
  ├── Actuarial (reserves, IBNR)       │   │
  │                                     │   ├── Auto-Adjudication
  ├── Product / Underwriting            │   │   Support & Rules Mgmt
  │   (benefit design, policy           │   │
  │   interpretation)                   │   ├── Manual Adjudication
  │                                     │   │   Team (Onshore/Offshore)
  └── Compliance & Regulatory           │   │
                                        │   ├── Quality Assurance Team
                                        │   │
                                        │   └── Correspondence &
                                        │       Document Management
                                        │
                                        ├── Analytics & Reporting Lead
                                        └── Continuous Improvement Lead

DELIVERY MIX:
- FNOL / Intake: Onshore or nearshore (voice-intensive, empathy-critical)
- Document processing: Offshore (high volume, OCR-assisted)
- Simple adjudication: Offshore (rules-driven, measurable)
- Complex adjudication: Onshore (judgment-intensive, regulatory risk)
- Quality assurance: Onshore (expertise-required)
```

## Straight-Through Processing (STP)

STP is the single most important metric in modern claims operations. Every claim that is auto-adjudicated without human intervention reduces cost, cycle time, and error rate simultaneously.

### STP Design Principles

```
STRAIGHT-THROUGH PROCESSING REQUIREMENTS
==========================================

A claim qualifies for STP when ALL of the following are true:
1. Policy is active and in good standing
2. Claim data is complete and validated (no missing fields)
3. Claim type matches auto-adjudication rules
4. Amount is within auto-adjudication authority threshold
5. No fraud indicators triggered
6. No coordination of benefits (COB) issues
7. No pre-authorization requirements (or pre-auth already approved)
8. Provider/vendor is in network and contracted (health/P&C)
9. No duplicate claim detected
10. Benefit calculation is deterministic (no judgment required)

STP RATE TARGETS BY LINE:
- Health claims (professional): 80-90%
- Health claims (facility): 60-75%
- Auto physical damage (simple): 40-60%
- Property (simple): 30-50%
- Workers' compensation: 20-35%
- Disability / life: 15-25%

IMPROVING STP RATES:
- Clean up provider/vendor master data
- Improve FNOL data capture (required fields, validation)
- Expand adjudication rules engine coverage
- Add AI-assisted document extraction (medical records, invoices)
- Automate COB determination
- Implement real-time eligibility verification
```

## Adjudication Rules

### Rules Engine Architecture

```
ADJUDICATION RULES HIERARCHY
==============================

LAYER 1: ELIGIBILITY RULES
├── Policy active on date of service/loss
├── Claimant is covered member/insured
├── Waiting period satisfied
├── Peril/condition covered under policy

LAYER 2: BENEFIT RULES
├── Coverage limits and sublimits
├── Deductible application
├── Coinsurance / copay calculation
├── Network vs. out-of-network pricing
├── Usual and customary rate (UCR) tables
├── Fee schedule application
├── Maximum benefit limits

LAYER 3: BUSINESS RULES
├── Duplicate claim check
├── Coordination of benefits (primary/secondary)
├── Pre-authorization requirements
├── Medical necessity (health)
├── Bundling / unbundling edits (health)
├── Accumulator updates (deductible, OOP max)

LAYER 4: COMPLIANCE RULES
├── State-specific mandated benefits
├── Timely filing limits
├── Prompt pay requirements
├── Mental health parity
├── Surprise billing protections
├── No Surprises Act compliance (health)

LAYER 5: FRAUD RULES
├── Statistical outlier detection
├── Known fraud patterns
├── Provider/claimant watch lists
├── Velocity checks (frequency of claims)
├── Geographic impossibility
```

## Quality Assurance in Claims

### QA Framework

```
QUALITY ASSURANCE PROGRAM
===========================

AUDIT METHODOLOGY:
- Random sampling: 3-5% of all processed claims (minimum)
- Targeted sampling: 100% of claims above $ threshold, new adjusters, flagged categories
- End-to-end review: Coverage determination, benefit calculation, payment accuracy, documentation

ACCURACY METRICS:
- Financial accuracy: Payment amount correct (target: > 99%)
- Procedural accuracy: Correct process followed (target: > 97%)
- Documentation accuracy: Complete and correct notes (target: > 95%)
- Overall quality score: Weighted composite (target: > 97%)

AUDIT SCORING:
- Critical error: Wrong payment amount, wrong coverage determination, missed fraud = automatic fail
- Major error: Incomplete documentation, missed process step = point deduction
- Minor error: Formatting, non-material notation = noted but not scored

CALIBRATION:
- Weekly calibration sessions between QA team and operations
- Monthly calibration with client claims leadership
- Quarterly inter-rater reliability assessment
- Dispute resolution process for contested audit findings
```

## Fraud Detection

### Fraud Detection Framework

```
FRAUD DETECTION LAYERS
========================

LAYER 1: AUTOMATED RULES (REAL-TIME)
├── Duplicate claim submission
├── Claims after policy cancellation
├── Provider billing anomalies (upcoding, unbundling)
├── Velocity checks (same claimant, same provider, same diagnosis)
├── Geographic impossibility (service in two states same day)
├── Known fraud scheme patterns
└── Watch list matching (NICB, NHCAA databases)

LAYER 2: PREDICTIVE ANALYTICS (BATCH)
├── Machine learning models scoring claim fraud probability
├── Social network analysis (linked claimants, providers, attorneys)
├── Outlier detection (provider billing patterns vs. peers)
├── Text mining of claim notes and medical records
└── Image analysis (document forgery, damage assessment)

LAYER 3: SPECIAL INVESTIGATIONS UNIT (SIU)
├── Referrals from automated scoring (above threshold)
├── Referrals from adjusters (suspicious indicators)
├── Full investigation with interviews, surveillance, forensics
├── Coordination with law enforcement (if criminal)
└── Recovery and prosecution recommendation

SIU REFERRAL RATE: 3-5% of claims (higher = too sensitive, lower = likely missing fraud)
CONFIRMED FRAUD RATE: 5-10% of SIU referrals should confirm fraud
SAVINGS TARGET: 3-7x the cost of the fraud detection program
```

## Performance Metrics

```
METRIC                              | TARGET              | MEASUREMENT
====================================+=====================+===================
Auto-adjudication rate              | 70-85% (health)     | STP claims / total
Claims cycle time (average)         | < 15 days (P&C)     | FNOL to payment
                                    | < 30 days (health)  |
Claims accuracy rate                | > 99% (financial)   | QA audit results
                                    | > 97% (procedural)  |
Claims inventory (pending)          | < 25 days supply     | Pending / daily volume
First-touch resolution              | > 60% (simple)      | Resolved without pend
Cost per claim                      | Industry benchmark   | Total cost / volume
Customer satisfaction (CSAT)        | > 4.0 / 5.0         | Post-claim survey
Complaint rate                      | < 0.5% of claims    | Complaints / claims
Prompt pay compliance               | 100%                | State regulatory req
Denial overturn rate                | < 10%               | Appeals overturning denial
SIU referral rate                   | 3-5%                | Referrals / claims
Fraud savings ratio                 | > 5:1               | Savings / program cost
```

## Claims Technology Platforms

```
PLATFORM         | LINE OF BUSINESS           | STRENGTHS
=================+============================+================================
Guidewire        | P&C (ClaimCenter)          | Market leader P&C, configurable,
                 |                             | strong ecosystem
Duck Creek       | P&C, specialty             | Cloud-native, modern architecture,
                 |                             | API-driven
HealthEdge       | Health (HealthRules Payer)  | Modern health claims, real-time
                 |                             | adjudication, configurable
QNXT (Cognizant) | Health                     | Widely deployed, mature, complex
Facets (Trizetto)| Health                     | Legacy market leader, large install
                 |                             | base, aging platform
Majesco          | P&C, L&A                   | Cloud-native, rapid deployment
OneShield        | P&C, specialty             | Flexible, strong specialty lines
```

## Regulatory Compliance

### Key Regulatory Requirements

```
REQUIREMENT                  | JURISDICTION      | IMPACT ON OPERATIONS
=============================+===================+=============================
Prompt pay laws              | All US states      | Payment within 30-45 days
                             |                    | (varies by state and claim type)
Unfair claims practices      | All US states      | Investigation timelines,
                             |                    | communication requirements
ERISA                        | Federal            | Self-funded health plan claims
                             |                    | and appeals procedures
No Surprises Act             | Federal            | Surprise billing protections,
                             |                    | IDR process
Mental health parity         | Federal + state    | Equal coverage for MH/SUD
ACA requirements             | Federal            | Essential health benefits,
                             |                    | preventive care
State DOI regulations        | Per state           | Specific filing, reporting,
                             |                    | and examination requirements
Data privacy (HIPAA, state)  | Federal + state    | PHI handling, breach notification
```

## Claims Staffing Models

### Staffing Approach

```
ROLE                        | LOCATION           | RATIO (CLAIMS:FTE)
============================+====================+=====================
FNOL Representative         | Onshore/Nearshore  | 15-25 FNOL per day
Claims Processor (simple)   | Offshore           | 40-80 claims per day
Claims Adjuster (complex)   | Onshore            | 8-15 claims per day
Medical Review Nurse        | Onshore             | 20-30 reviews per day
QA Auditor                  | Onshore             | 25-40 audits per day
SIU Investigator            | Onshore             | 15-25 active cases
Correspondence Specialist   | Offshore            | 60-100 items per day
```

## Digital Claims Transformation

### AI-Assisted Claims

```
AI APPLICATION               | MATURITY           | IMPACT
=============================+====================+========================
Document extraction (OCR/AI) | Production-ready   | 70-80% reduction in
                             |                    | manual data entry
Damage estimation (photos)   | Emerging           | Faster P&C estimates,
                             |                    | reduced adjuster visits
Medical record summarization | Production-ready   | 50-60% reduction in
                             |                    | review time
Fraud scoring (ML models)    | Production-ready   | 2-3x improvement in
                             |                    | fraud detection rate
Chatbot FNOL                 | Production-ready   | 20-30% FNOL cost
                             |                    | reduction
Predictive claim severity    | Emerging           | Early identification of
                             |                    | high-severity claims
NLP for claim notes          | Emerging           | Automated coding,
                             |                    | pattern detection
```

## Continuous Improvement

### Improvement Priorities

1. **Increase auto-adjudication rate** — Every 1% increase in STP reduces cost per claim and cycle time. Analyze pend reasons to find the next automation opportunity.
2. **Reduce claim cycle time** — Map the value stream. Most of the cycle time is wait time, not work time. Attack the waiting.
3. **Improve first-touch resolution** — Claims that are touched once and resolved are dramatically cheaper than claims that are pended, returned, and reworked.
4. **Reduce denial overturn rate** — If more than 10% of denials are overturned on appeal, the original adjudication is wrong too often. Fix the root cause.
5. **Optimize fraud detection** — Balance fraud catch rate against false positive impact on legitimate claimants.

## What NOT To Do

- **Do not auto-deny claims to hit speed metrics.** Improper denials generate complaints, regulatory scrutiny, bad faith lawsuits, and brand damage. Speed is important; accuracy is non-negotiable.
- **Do not ignore state-specific regulations.** Prompt pay requirements, claims handling timelines, and communication requirements vary by state. A single process does not comply everywhere. Build state-specific rules into the adjudication engine.
- **Do not treat claims as purely transactional.** Behind every claim is a person who has experienced a loss. FNOL representatives must be trained in empathy, not just data capture. CSAT on claims handling drives policyholder retention.
- **Do not defer technology investment.** Legacy claims platforms are the single biggest barrier to STP improvement. If the client is running a 20-year-old adjudication engine, budget for modernization or accept permanently high manual processing costs.
- **Do not understaff QA.** A 1% error rate on 10 million claims is 100,000 errors. At $200 average rework cost, that is $20M in waste — far more than the cost of a robust QA program.
- **Do not build fraud detection that punishes legitimate claimants.** Overly aggressive fraud scoring creates false positives that delay legitimate claims and infuriate policyholders. Calibrate to minimize false positives while maintaining detection rates.
- **Do not skip the clinical review step for health claims.** Adjudicating health claims without clinical expertise leads to incorrect medical necessity determinations, appeal losses, and regulatory findings.
- **Do not allow claims inventory to grow silently.** Aging claims inventory is a leading indicator of operational problems. Monitor daily, escalate weekly, resolve root causes monthly.
## Anti-Patterns

**Over-engineering for hypothetical scale.** Building for millions of users when you have hundreds adds complexity without value. Solve today's problems first.

**Ignoring the existing ecosystem.** Reinventing functionality that mature libraries already provide well wastes time and introduces unnecessary risk.

**Premature abstraction.** Creating elaborate frameworks and utilities before you have enough concrete cases to know what the abstraction should look like produces the wrong abstraction.

**Neglecting error handling at boundaries.** Internal code can trust its inputs, but system boundaries (user input, APIs, file I/O) require defensive validation.

**Skipping documentation for obvious code.** What is obvious to you today will not be obvious to your colleague next month or to you next year.
## Evidence, version and decision checks

- Define service scope, exclusions, service hours, priority definitions, contractual SLAs and ownership before committing to targets.
- Treat industry staffing ratios, SLA percentages and cost targets as examples requiring baseline measurement.
- Include handoffs, escalation, measurement sources, incident recovery and continuity plans in operational recommendations.

## Review & Production Validation (2026-10-31)

- **Domain control (Sector / financial analysis):** Identify applicable jurisdiction, source dates, sector-specific standards and assumptions.
- **Independent validation:** Use verifiable baselines and sensitivity ranges rather than universal operational benchmarks.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
