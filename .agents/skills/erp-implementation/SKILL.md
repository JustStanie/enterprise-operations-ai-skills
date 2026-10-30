---
name: erp-implementation
description: >-
  Use when the user needs erp implementation in enterprise technology: Define process scope,
  sponsorship and measurable benefits. Compare vendors through requirements and fit-gap
  workshops.
---

# ERP Implementation

Act as an evidence-led erp implementation specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

ERP implementations fail not because of technology but because of people, data, and scope. The technology works; the question is whether the organization can absorb the change, clean its data, and resist the urge to replicate every legacy process in the new system. Ruthless scope discipline, unwavering executive sponsorship, and a data migration workstream that starts on day one are the three traits shared by every successful ERP program.

The single biggest mistake in ERP implementation is treating it as a like-for-like replacement of the old system. If the goal is "same as today but on a new platform," the organization will spend tens of millions to recreate complexity that should have been eliminated. ERP is the forcing function for process standardization, and the implementation is the once-in-a-decade opportunity to simplify, harmonize, and modernize business processes. Organizations that embrace this opportunity create transformative value; those that resist it get an expensive new version of their old problems.

Data migration is where ERP implementations go to die. Every organization underestimates the effort required to cleanse, map, transform, and validate decades of accumulated data. Starting data migration planning on day one of the program, not six months before go-live, is the single most impactful decision a program leader can make.

## Philosophy

ERP implementations fail not because of technology but because of people, data, and scope. The technology works. The question is whether your organization can absorb the change, clean its data, and resist the urge to replicate every legacy process in the new system. ERP programs benefit from three recurring practices: ruthless scope discipline, executive air cover that never wavered, and a data migration workstream that started on day one rather than six months before go-live.

The single biggest mistake enterprises make is treating ERP as a like-for-like replacement of the old system. If you are spending $50M+ to implement S/4HANA and your goal is "same as today but on HANA," you have already failed. ERP is the forcing function for process standardization. Embrace it or do not bother.

## ERP Landscape and Selection

### Platform Positioning (2024-2026)

```
Platform              | Sweet Spot                        | Watch Out For
----------------------|-----------------------------------|----------------------------------
SAP S/4HANA           | Complex manufacturing, global     | Cost, complexity, partner
                      | enterprises, heavy supply chain   | ecosystem quality varies widely
Oracle Cloud ERP      | Finance-led transformations,      | Less mature in manufacturing
                      | fast-growing companies            | than SAP; integration tax
Workday               | HR + Finance unified platform,    | Not a full ERP; weak in supply
                      | services/tech companies           | chain, manufacturing
Microsoft Dynamics    | Mid-market, Microsoft-heavy       | Struggles at true enterprise
365 F&O               | shops, simpler supply chains      | scale; partner dependency
Infor CloudSuite      | Industry-specific (healthcare,    | Smaller ecosystem; M&A risk
                      | distribution, fashion)            | under Koch ownership
```

### Selection Framework

Do not start with features. Start with these questions:

1. **What processes are truly differentiating?** (Hint: fewer than you think)
2. **What is your integration complexity?** (Number of systems, real-time requirements)
3. **What is your appetite for change?** (Determines how much you can standardize)
4. **What does your talent market look like?** (Can you hire SAP ABAP developers in your geography?)
5. **What is your realistic budget and timeline?** (Then add 40% to both)

### Build vs Buy vs Configure

```
Decision Hierarchy (in order of preference):

1. USE STANDARD — Adopt the vendor's out-of-box process
   - Best TCO, easiest upgrades, fastest implementation
   - Requires business process change

2. CONFIGURE — Use platform configuration (no custom code)
   - Workflow rules, custom fields, approval hierarchies
   - Maintainable, upgrade-safe

3. EXTEND — Use vendor-supported extension frameworks
   - SAP BTP side-by-side extensions
   - Oracle PaaS extensions
   - Still on the upgrade path

4. CUSTOMIZE — Write custom code (ABAP, PL/SQL, X++)
   - LAST RESORT. Must have documented business justification.
   - Creates technical debt and upgrade blockers
   - Requires ongoing maintenance budget
```

## Implementation Methodology

### SAP Activate Phases
1. **Discover** — Scope, business case, fit-to-standard workshops
2. **Prepare** — Project setup, governance, environment provisioning
3. **Explore** — Fit-gap analysis using SAP Best Practices as baseline
4. **Realize** — Configuration, development, data migration, integration build
5. **Deploy** — Testing, training, cutover, go-live
6. **Run** — Hypercare, optimization, continuous improvement

### Oracle Unified Method (OUM) Adaptation
Oracle's methodology is similar but emphasizes iterative conference room pilots (CRPs). The key difference: Oracle pushes harder toward SaaS standard processes because their cloud ERP is less customizable than SAP by design. This is a feature, not a bug.

### Fit-Gap Analysis — How to Do It Right

```
For each business process:

1. DEMONSTRATE the standard system process to business users
   (Do NOT ask them what they want first — show them what the system does)

2. CLASSIFY the gap:
   - GREEN: Standard process acceptable as-is
   - YELLOW: Minor configuration needed
   - RED: Significant gap requiring extension or workaround

3. For every RED gap, force this conversation:
   - "What is the business impact of NOT having this?"
   - "What is the cost of building and maintaining this?"
   - "Can we solve this with a process change instead?"

4. Escalate unresolved REDs to steering committee with cost data
```

## Data Migration Strategy

Data migration is where ERP projects go to die. Start early, iterate often, and never trust the source data.

### Migration Approach

```
Phase 1: Data Assessment (Weeks 1-4)
- Profile source data quality (completeness, accuracy, consistency)
- Map source-to-target data model
- Identify data ownership and stewardship
- Establish data quality KPIs and thresholds

Phase 2: Migration Design (Weeks 5-8)
- Define extraction, transformation, and load (ETL) approach
- Design data cleansing rules
- Build migration templates and mapping documents
- Define reconciliation approach

Phase 3: Iterative Mock Migrations (Ongoing)
- Mock 1: Prove the pipeline works (expect 40% data quality)
- Mock 2: Validate transformations (target 70% quality)
- Mock 3: Full dress rehearsal (target 95% quality)
- Mock 4: Final rehearsal with cutover timing (target 99%+)

Phase 4: Cutover Migration
- Execute with documented runbook
- Reconcile every data object (counts, balances, checksums)
- Obtain business sign-off before go-live
```

### Data Objects Priority

```
Priority 1 (Must-have for go-live):
  - Chart of accounts, cost centers, profit centers
  - Customer master, vendor master
  - Material master, BOM, routing
  - Open POs, open SOs, open invoices

Priority 2 (Important but manageable):
  - Historical transactions (determine cutoff)
  - Employee master data
  - Asset records

Priority 3 (Can follow later):
  - Reporting history
  - Archived documents
  - Legacy reference data
```

## Go-Live Strategy

### Approach Comparison

```
Big Bang:
  + One cutover event, no dual-run
  + Clean break from legacy
  - Highest risk; if it fails, everything fails
  - Requires organizational readiness across all functions
  Best for: Single-site or highly integrated processes

Phased (by module or geography):
  + Lower risk per phase
  + Lessons learned carry forward
  - Requires integration bridges between old and new
  - Longer total timeline, higher total cost
  Best for: Global rollouts, multi-division enterprises

Parallel Run:
  + Lowest risk (old system remains operational)
  - Doubles operational effort during parallel period
  - Users lose motivation to adopt new system
  Best for: Regulated industries requiring auditability
```

## Testing Strategy

```
Testing Phase     | What                          | Who             | Duration
------------------|-------------------------------|-----------------|----------
Unit Testing      | Individual configurations     | Technical team  | 2-3 weeks
SIT               | End-to-end process flows      | Technical team  | 3-4 weeks
Integration Test  | Cross-module, cross-system     | Technical + Bus | 3-4 weeks
UAT               | Business scenario validation  | Business users  | 4-6 weeks
Performance Test  | Load, stress, volume testing  | Performance team| 2-3 weeks
Regression Test   | Verify fixes, no side effects | Mixed           | Ongoing
Cutover Rehearsal | Full migration + go-live sim  | Full team       | 1-2 weeks
```

**Non-negotiable UAT rule:** Business users must execute UAT, not the implementation team. If business users "don't have time" for UAT, that is a red flag that the program lacks business ownership and you should escalate immediately.

## Total Cost of Ownership

```
Typical TCO Breakdown (5-year, large enterprise):

Software licenses/subscriptions:     20-25%
Systems integrator (implementation):  35-45%
Internal resources (backfill, PMO):   10-15%
Data migration and cleansing:          5-8%
Change management and training:        5-8%
Infrastructure (if on-prem):           5-10%
Hypercare and post-go-live support:    3-5%
Contingency (you will need this):     10-15%

Rule of Thumb:
- Multiply software license cost by 4-6x for total implementation cost
- Add 15-20% for year-over-year run cost (support, enhancements, upgrades)
```

## Change Management

ERP change management is not optional. It is not a soft skill. It is the difference between a system people use and a $100M shelfware investment.

### Change Management Workstreams
1. **Stakeholder Analysis** — Map influence and resistance by role
2. **Communication Plan** — Cadenced, audience-specific, honest about disruption
3. **Training Program** — Role-based, hands-on, with sandbox environments
4. **Business Readiness Assessment** — Go/no-go criteria tied to adoption metrics
5. **Super User Network** — Embedded champions in every business unit
6. **Resistance Management** — Proactive identification and intervention

## Common Failure Modes

```
Failure Mode                  | Root Cause                        | Prevention
------------------------------|-----------------------------------|---------------------------
Scope creep                   | Weak governance, no change        | Formal change control board
                              | control process                   | with cost/timeline impact
Data quality disaster         | Migration started too late,       | Start data profiling in
                              | no data ownership                 | month 1, assign data owners
Change resistance             | "IT project" framing, no          | Executive sponsorship,
                              | business ownership                | business-led design
Budget overrun                | Optimistic estimates,             | Add 40% contingency,
                              | underestimated complexity         | fixed-price where possible
Integration failures          | Interfaces designed too late,     | Integration architecture
                              | no E2E testing                    | in design phase, early SIT
Go-live catastrophe           | Insufficient testing,             | Minimum 2 cutover rehearsals,
                              | no cutover rehearsal              | documented go/no-go criteria
```

## Hypercare and Post-Go-Live

### Hypercare Structure (Typically 4-12 Weeks)

```
Week 1-2: War Room Mode
- Full implementation team on-site
- 24/7 support coverage
- Hourly triage calls
- Priority 1 issues resolved same-day

Week 3-4: Stabilization
- Shift to daily triage calls
- Begin knowledge transfer to support team
- Address workarounds with permanent fixes

Week 5-8: Transition to BAU
- Weekly issue review
- Implementation team ramps down
- Support team takes primary ownership
- Begin optimization backlog
```

## Anti-Patterns

- **Customizing the ERP to match existing processes instead of adopting standard processes.** Every customization adds implementation cost, testing complexity, upgrade difficulty, and ongoing maintenance burden. The default should be to adopt the vendor's standard process and customize only where there is a documented, quantified business case.
- **Treating data migration as a technical task rather than a business transformation.** Data migration requires business-led decisions about data ownership, quality standards, retention policies, and master data governance. Delegating it entirely to the technical team produces migrated data that is clean enough to load but not trustworthy enough to use.
- **Underinvesting in change management and training.** ERP changes how every user does their job. Organizations that budget 5% for change management and 95% for technology consistently experience low adoption, workarounds, and shadow processes that undermine the entire investment.
- **Allowing scope creep through the fit-gap process.** Every gap identified during fit-gap analysis creates pressure to build a customization. Without a disciplined process for evaluating each gap against the cost of customization versus the cost of process change, the gap list becomes a customization wish list that bloats the program.
- **Planning a big-bang go-live for an organization that has never done one.** Simultaneous cutover of all business units, all geographies, and all modules on a single weekend is the highest-risk approach. Phased go-lives reduce risk, enable learning, and build organizational confidence.

## What NOT To Do

- **Do not skip fit-to-standard workshops.** Jumping straight to requirements gathering without showing users the standard system guarantees over-customization.
- **Do not let the SI run the program.** The SI implements; your people own the business decisions. If your SI is making business process decisions, you have abdicated ownership.
- **Do not treat data migration as a technical task.** It is a business task. Business users must own data quality, cleansing rules, and sign-off.
- **Do not go live without at least two full cutover rehearsals.** A cutover plan that has not been rehearsed is fiction.
- **Do not understaff change management.** One change manager for a 500-person implementation is not change management. It is a checkbox.
- **Do not replicate legacy reports.** Challenge every legacy report. Most are unused. Build reporting based on new system capabilities and actual decision-making needs.
- **Do not ignore the organizational design implications.** ERP changes roles, responsibilities, and org structures. If you are not redesigning roles, you are not transforming.
- **Do not assume the vendor's timeline is realistic.** SAP and Oracle sales teams sell timelines that assume perfect conditions. Your conditions are not perfect.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.
