---
name: application-support
description: >-
  Use when the user needs application support in managed services: Define service scope,
  business criticality and escalation tiers. Inventory applications, integrations and known
  failure modes.
---

# Application Support

Act as an evidence-led application support specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Application management services is not just "keeping the lights on." It is the ongoing stewardship of the software that runs the business. Every application in the portfolio represents a business capability, and every incident, defect, or enhancement request is an opportunity to either degrade or improve that capability. The best AMS organizations combine deep application knowledge with disciplined service management and a continuous improvement mindset.

The critical distinction in AMS is between reactive support (fixing things when they break) and proactive management (preventing things from breaking, improving performance, reducing technical debt, and enabling business agility). Clients who buy AMS as reactive break-fix will always feel like they are paying too much. Clients who buy AMS as proactive application stewardship will see it as a strategic investment. Your job is to deliver the latter, even when the contract was written for the former.

## AMS Operating Model

### Service Scope

```
AMS SERVICE SCOPE
===================

INCIDENT MANAGEMENT
├── Application incident detection and diagnosis
├── Root cause identification
├── Workaround identification and implementation
├── Incident resolution and service restoration
├── Major incident management (bridge calls, war rooms)
└── Post-incident review (PIR)

PROBLEM MANAGEMENT
├── Trend analysis and recurring incident identification
├── Root cause analysis (RCA)
├── Known error database (KEDB) management
├── Permanent fix development and implementation
└── Problem resolution tracking

CHANGE MANAGEMENT
├── Change request intake and assessment
├── Impact analysis and risk assessment
├── Change development (minor enhancements, config changes)
├── Testing (unit, integration, regression, UAT support)
├── Change approval board (CAB) participation
├── Implementation and deployment
└── Post-implementation verification

RELEASE MANAGEMENT
├── Release planning and scheduling
├── Release packaging and build management
├── Environment management (DEV, QA, STAGING, PROD)
├── Deployment execution (manual or CI/CD pipeline)
├── Release validation and smoke testing
├── Rollback procedures
└── Release documentation

APPLICATION MONITORING
├── Application health monitoring (availability, performance)
├── Proactive alerting and auto-remediation
├── Capacity monitoring and planning
├── Batch job monitoring
├── Integration and interface monitoring
├── End-user experience monitoring
└── Synthetic transaction monitoring

APPLICATION MAINTENANCE
├── Bug fixes and defect resolution
├── Minor enhancements (< X hours effort)
├── Configuration changes
├── Patch management (vendor patches, security patches)
├── Database maintenance (performance tuning, archival)
├── Technical debt reduction
└── Documentation maintenance
```

### Organizational Structure

```
AMS TEAM STRUCTURE
====================

ENGAGEMENT LEADERSHIP
├── Engagement Manager / Service Delivery Manager
│   (Client relationship, SLA management, governance)
├── Technical Architect / Lead
│   (Cross-application technical decisions, architecture guidance)
└── Transition Manager (during onboarding)

APPLICATION SUPPORT TEAMS (PER APPLICATION OR GROUP)
├── Application Lead (functional + technical ownership)
├── L2 Support Analysts (functional troubleshooting, configuration)
├── L2 Support Developers (code-level debugging, fixes, enhancements)
├── L3 / SME (deep technical expertise, architecture, performance)
├── QA / Test Analyst (test planning, execution, automation)
└── Database Administrator (shared across applications, as needed)

SHARED SERVICES
├── L1 / Service Desk (first contact, ticket routing, basic resolution)
├── Environment Management (DEV/QA/STAGING provisioning)
├── Release Management (deployment coordination)
├── Monitoring Team (24/7 monitoring, alert management)
└── Knowledge Management (documentation, training materials)

DELIVERY MIX:
- Onshore (20-30%): Application leads, architects, client-facing roles,
  business-critical SMEs
- Offshore (70-80%): L2 support, development, testing, monitoring,
  documentation
```

## Application Support Tiers

### Tiered Support Model

```
TIER    | ROLE                | RESPONSIBILITIES                    | TARGET
========+=====================+=====================================+=========
L1      | Service Desk        | Ticket logging, initial triage,     | Resolve
        |                     | known error lookup, password        | 20-30%
        |                     | resets, basic troubleshooting,      |
        |                     | routing to correct L2 queue         |

L2      | Application         | Functional investigation,           | Resolve
Func.   | Analyst             | configuration analysis, data        | 30-40%
        |                     | fixes, report generation,           |
        |                     | workaround implementation           |

L2      | Application         | Code-level debugging, log           | Resolve
Tech.   | Developer           | analysis, defect fixing,            | 20-30%
        |                     | minor enhancements, database        |
        |                     | queries                             |

L3      | SME / Architect     | Complex root cause analysis,        | Resolve
        |                     | performance issues, architecture    | 5-10%
        |                     | problems, vendor engagement,        |
        |                     | major defects                       |

Vendor  | Software Vendor     | Product defects, patches,           | Varies
        |                     | feature requests, platform          |
        |                     | issues                              |

ESCALATION TRIGGERS:
- L1 → L2: Cannot resolve with known error database within 30 minutes
- L2 Func. → L2 Tech.: Requires code analysis or database investigation
- L2 → L3: Requires architectural expertise, performance tuning, or >4 hours effort
- L3 → Vendor: Product defect confirmed, patch needed, or platform limitation
```

## Incident and Problem Management

### Incident Management for Applications

```
APPLICATION INCIDENT PRIORITY MATRIX
=======================================

           | Business Critical App | Standard App    | Non-Critical App
-----------+-----------------------+-----------------+-----------------
Total      | P1 - Critical         | P2 - High       | P3 - Medium
Outage     | Response: 15 min      | Response: 30 min| Response: 1 hour
           | Resolve: 4 hours      | Resolve: 8 hours| Resolve: 24 hours

Major      | P2 - High             | P3 - Medium     | P4 - Low
Degradation| Response: 30 min      | Response: 1 hour| Response: 4 hours
           | Resolve: 8 hours      | Resolve: 24 hrs | Resolve: 48 hours

Minor /    | P3 - Medium           | P4 - Low        | P5 - Planning
Workaround | Response: 1 hour      | Response: 4 hrs | Response: 8 hours
Available  | Resolve: 24 hours     | Resolve: 48 hrs | Resolve: 5 days

APPLICATION CLASSIFICATION CRITERIA:
- Business Critical (Tier 1): Revenue-generating, customer-facing, regulatory
  (e.g., ERP, core banking, e-commerce, trading platform)
- Standard (Tier 2): Business-important but not revenue-critical
  (e.g., HRIS, CRM, reporting tools, internal portals)
- Non-Critical (Tier 3): Supporting, limited user base
  (e.g., departmental tools, test environments, legacy read-only)
```

### Problem Management Process

```
PROBLEM MANAGEMENT FOR AMS
=============================

REACTIVE PROBLEM MANAGEMENT:
1. Trigger: Recurring incident (3+ occurrences in 30 days)
2. Problem record creation with linked incidents
3. Root cause analysis (5 Whys, Fishbone, Fault Tree)
4. Known error creation (if workaround available)
5. Permanent fix development and change request
6. Fix verification and problem closure

PROACTIVE PROBLEM MANAGEMENT:
1. Monthly trend analysis of incidents by application, category, root cause
2. Identify emerging patterns before they become repeat incidents
3. Application health assessments (quarterly per Tier 1 application)
4. Performance trend analysis (degradation before outage)
5. Vendor advisory review (known defects, recommended patches)

PROBLEM MANAGEMENT METRICS:
- Problems identified per month: Trending (indicates proactive maturity)
- Known errors in database: Growing, reviewed quarterly
- Average RCA completion time: < 5 business days
- Problems with permanent fix implemented: > 60% within 90 days
- Repeat incident reduction: 10-15% year-over-year
```

## SLA Framework

### SLA Design for AMS

```
SLA STRUCTURE FOR APPLICATION SUPPORT
=======================================

AVAILABILITY SLAs (PER APPLICATION TIER):
- Tier 1 applications: 99.9% availability (8.7 hours downtime/year)
- Tier 2 applications: 99.5% availability (43.8 hours downtime/year)
- Tier 3 applications: 99.0% availability (87.6 hours downtime/year)
- Measurement: Planned maintenance excluded, measured monthly
- Availability = (Total Minutes - Downtime Minutes) / Total Minutes

INCIDENT RESOLUTION SLAs:
- See priority matrix above
- Measured: % of incidents resolved within SLA target
- Target: > 95% SLA compliance across all priorities

CHANGE/ENHANCEMENT SLAs:
- Emergency change: < 4 hours (break-fix)
- Standard change (< 8 hours effort): 5 business days
- Minor enhancement (8-40 hours): 15 business days
- Medium enhancement (40-200 hours): Scoped and scheduled per release

SERVICE REQUEST SLAs:
- User access provisioning: < 24 hours
- Report generation (standard): < 24 hours
- Data correction: < 48 hours
- Environment refresh: < 5 business days

SLA MEASUREMENT PRINCIPLES:
- Clock starts when ticket is assigned to AMS team (not created by user)
- Clock pauses when waiting on client (approval, information, UAT)
- SLA exclusions: Force majeure, client-caused outages, planned maintenance
- Monthly SLA report with trend analysis
```

## Change Management and Release Management

### Change Management

```
CHANGE MANAGEMENT FOR AMS
============================

CHANGE CATEGORIES:
- Standard change: Pre-approved, low risk, well-documented procedure
  (e.g., user access, config change per runbook, scheduled batch job update)
- Normal change: Requires assessment, approval, scheduled implementation
  (e.g., bug fix, minor enhancement, patch application)
- Emergency change: Expedited approval, immediate implementation
  (e.g., production break-fix, security vulnerability, regulatory deadline)

CHANGE ASSESSMENT CHECKLIST:
□ Impact analysis (affected systems, users, integrations)
□ Risk assessment (likelihood and impact of failure)
□ Test plan (what will be tested, by whom)
□ Rollback plan (how to revert if change fails)
□ Implementation plan (steps, timing, responsible persons)
□ Communication plan (who needs to know, when)
□ CAB approval (for normal and significant changes)

CHANGE SUCCESS RATE TARGET: > 98%
Failed changes must trigger post-implementation review.
```

### Release Management

```
RELEASE MANAGEMENT FRAMEWORK
===============================

RELEASE CADENCE OPTIONS:
- Continuous deployment: For cloud-native, CI/CD-enabled applications
- Bi-weekly releases: For applications with moderate change volume
- Monthly releases: For stable applications with quarterly business cycles
- Quarterly releases: For ERP and complex integrated systems

RELEASE PROCESS:
1. Release planning (scope, schedule, dependencies, resources)
2. Development completion and code freeze
3. QA testing (functional, regression, integration, performance)
4. UAT coordination (client testing)
5. Pre-production deployment and validation
6. Go/no-go decision (release readiness review)
7. Production deployment (maintenance window)
8. Post-deployment validation (smoke tests, monitoring)
9. Hypercare period (24-72 hours enhanced monitoring)
10. Release closure and documentation

ENVIRONMENT STRATEGY:
DEV → QA/TEST → STAGING/PRE-PROD → PRODUCTION
- Each environment mirrors production as closely as possible
- Data masking required for non-production environments
- Environment refresh schedule: Monthly or per release cycle
```

## Application Monitoring

### Monitoring Framework

```
APPLICATION MONITORING LAYERS
================================

LAYER 1: INFRASTRUCTURE
├── Server health (CPU, memory, disk, network)
├── Database health (connections, tablespace, performance)
├── Middleware health (application server, message queue)
└── Tools: Datadog, Dynatrace, New Relic, Zabbix, SCOM

LAYER 2: APPLICATION
├── Application availability (up/down, health endpoints)
├── Application performance (response time, throughput, error rate)
├── Batch job monitoring (start, completion, duration, errors)
├── Integration monitoring (API calls, file transfers, message queues)
└── Tools: Dynatrace, AppDynamics, New Relic, Splunk

LAYER 3: END-USER EXPERIENCE
├── Synthetic monitoring (simulated user transactions)
├── Real user monitoring (RUM - actual user experience)
├── Page load times, transaction completion rates
└── Tools: Dynatrace, ThousandEyes, Catchpoint

LAYER 4: LOG MANAGEMENT
├── Application log aggregation and analysis
├── Error pattern detection
├── Security event correlation
└── Tools: Splunk, ELK Stack, Datadog Logs

ALERTING STANDARDS:
- Critical alerts: Auto-create P1/P2 incident, page on-call
- Warning alerts: Auto-create P3 incident, notify team
- Informational: Log for trend analysis, no immediate action
- Alert fatigue prevention: Review and tune alerts monthly
- False positive target: < 10% of total alerts
```

## Technical Debt Management

### Technical Debt Framework

```
TECHNICAL DEBT IDENTIFICATION AND MANAGEMENT
===============================================

DEBT CATEGORIES:
- Code debt: Duplicated code, poor structure, outdated patterns, no tests
- Architecture debt: Monolithic design, tight coupling, scalability limits
- Infrastructure debt: Unsupported OS/middleware, end-of-life hardware
- Documentation debt: Missing or outdated documentation, tribal knowledge
- Testing debt: Low test coverage, manual-only testing, no regression suite
- Security debt: Unpatched vulnerabilities, deprecated libraries, weak auth

ASSESSMENT APPROACH:
1. Annual technical debt assessment for Tier 1 and Tier 2 applications
2. Score each debt item: Business impact (1-5) x Effort to resolve (1-5)
3. Categorize: Quick wins (high impact, low effort) → address immediately
4. Budget: Allocate 15-20% of AMS capacity to technical debt reduction
5. Track: Maintain a tech debt backlog, report reduction progress quarterly

TECHNICAL DEBT METRICS:
- Debt items identified and cataloged
- Debt items resolved per quarter
- Vulnerability count (critical, high, medium)
- Test coverage percentage (for actively maintained applications)
- Dependencies on unsupported platforms/libraries
- Incident rate attributable to technical debt
```

## Application Rationalization

### Rationalization Framework

```
APPLICATION RATIONALIZATION
=============================

ASSESSMENT DIMENSIONS:
1. Business value: How critical is this application to business operations?
2. Technical health: What is the application's technical condition?
3. Total cost of ownership: What does it cost to run and maintain?
4. Replacement options: Is there a better alternative?

DISPOSITION OPTIONS:
┌─────────────────────────────────────────────────────┐
│                  HIGH BUSINESS VALUE                │
│                                                     │
│  INVEST              │  MODERNIZE                   │
│  Good technical      │  Poor technical health        │
│  health, high value  │  but high business value      │
│  → Enhance, extend   │  → Re-platform, re-architect │
│                      │     or replace                │
├──────────────────────┼──────────────────────────────┤
│  MAINTAIN            │  RETIRE                       │
│  Good technical      │  Poor technical health         │
│  health, low value   │  AND low business value       │
│  → Keep running,     │  → Decommission, migrate      │
│    minimize cost     │     data, retire               │
│                                                     │
│                  LOW BUSINESS VALUE                  │
└─────────────────────────────────────────────────────┘

AMS ROLE IN RATIONALIZATION:
- Provide TCO data for each application
- Assess technical health and debt
- Identify consolidation opportunities (apps with overlapping function)
- Support decommission execution (data archival, user migration)
- Reduce portfolio size → reduce AMS cost → reinvest in modernization
```

## Knowledge Management

### Knowledge Strategy for AMS

```
KNOWLEDGE MANAGEMENT FRAMEWORK
=================================

KNOWLEDGE ARTIFACTS:
- Application runbooks (operational procedures, restart sequences)
- Architecture documentation (system context, integrations, data flows)
- Support guides (troubleshooting trees, known errors, workarounds)
- Configuration guides (how to make common changes)
- Release notes (what changed, when, why)
- On-call handoff documents (current issues, pending changes)

KNOWLEDGE LIFECYCLE:
1. Create: Document during incident resolution, change implementation
2. Review: Peer review all new/updated documentation within 5 business days
3. Publish: Centralized knowledge repository (Confluence, SharePoint)
4. Use: Link knowledge articles to incident/change tickets
5. Measure: Track article usage, feedback, resolution contribution
6. Retire: Review all articles annually; archive or update stale content

TRANSITION KNOWLEDGE CAPTURE:
- During AMS transition, capture ALL tribal knowledge
- Shadow sessions with incumbent team (record with permission)
- Document undocumented processes, scripts, workarounds
- Identify single points of knowledge failure (one person knows X)
- Target: 100% of Tier 1 application procedures documented before go-live

METRICS:
- Knowledge article coverage: > 80% of applications have current runbooks
- Knowledge article freshness: > 90% reviewed within last 12 months
- Knowledge contribution rate: > 2 articles per team member per quarter
- First-call resolution using knowledge: Track and improve
```

## Staffing Models

### Onshore/Offshore Model

```
DELIVERY MODEL DESIGN
========================

FACTORS DRIVING ONSHORE VS. OFFSHORE:
- Client proximity requirements (on-site presence needed?)
- Time zone overlap requirements (real-time collaboration hours)
- Regulatory constraints (data residency, clearance requirements)
- Application criticality (Tier 1 may need onshore leads)
- Language requirements (client stakeholder language proficiency)

TYPICAL MIX:
- Standard AMS: 20-30% onshore, 70-80% offshore
- Regulated industry: 30-40% onshore, 60-70% offshore
- High-touch / transformation: 40-50% onshore, 50-60% offshore

ROLE-BASED ALLOCATION:
- Onshore: Service delivery manager, application leads, architects,
  client-facing SMEs, major incident managers
- Offshore: L2 support (functional and technical), testing, monitoring,
  documentation, routine change development

SHIFT COVERAGE:
- Business hours support (8x5): Single shift, onshore or time-zone aligned
- Extended hours (16x5): Two shifts, typically onshore AM + offshore PM
- 24x7 support: Three shifts, follow-the-sun or dedicated night shift
- On-call model: After-hours escalation for critical applications only

TEAM SIZING:
- Rough heuristic: 1 FTE per 3-5 applications (simple), 1 FTE per 1-2
  applications (complex)
- Refined sizing: Based on ticket volume, change volume, application
  complexity score, and SLA requirements
- Always include 10-15% buffer for attrition, training, and leave
```

## Continuous Improvement

### Improvement Program

```
AMS CONTINUOUS IMPROVEMENT FRAMEWORK
=======================================

1. INCIDENT REDUCTION
   - Analyze top 10 incident categories monthly
   - Implement permanent fixes for recurring incidents
   - Target: 10-15% incident reduction year-over-year

2. AUTOMATION
   - Automate monitoring and alerting (reduce manual checks)
   - Automate deployment (CI/CD pipeline adoption)
   - Automate testing (regression test automation)
   - Automate routine tasks (environment refresh, data masking, health checks)
   - Target: 20-30% of manual effort automated over 3 years

3. SHIFT-LEFT
   - Move L2 resolution capability to L1 (knowledge, tools, access)
   - Enable self-service for common requests (password reset, access, reports)
   - Target: 5% increase in L1 resolution rate annually

4. TECHNICAL DEBT REDUCTION
   - Allocate 15-20% of capacity to proactive improvement
   - Prioritize security patches and unsupported platform migration
   - Target: Reduce critical/high vulnerabilities by 30% annually

5. KNOWLEDGE IMPROVEMENT
   - Measure and improve knowledge article coverage and freshness
   - Reduce time to onboard new team members
   - Target: New team member productive within 4-6 weeks (not 3 months)
```

## What NOT To Do

- **Do not accept an AMS engagement without proper transition.** Knowledge transfer is the foundation of AMS success. A rushed transition creates a team that does not understand the applications they support, leading to missed SLAs, frustrated clients, and analyst burnout. Budget 8-16 weeks minimum.
- **Do not treat all applications equally.** A Tier 1 ERP system and a Tier 3 departmental tool do not deserve the same SLA, monitoring, or staffing investment. Tier the portfolio and allocate resources accordingly.
- **Do not neglect proactive work.** If 100% of AMS capacity is consumed by reactive support, the application portfolio is deteriorating. Protect 15-20% of capacity for proactive improvements, technical debt, and automation — even when the client pressures for more feature work.
- **Do not allow knowledge to be hoarded.** Single points of knowledge failure (one person who knows how the batch job works) are operational risks. Document everything, cross-train relentlessly, and rotate team members across applications.
- **Do not skip regression testing for changes.** "It is a small change" is the prelude to every production outage. All changes to Tier 1 and Tier 2 applications require regression testing proportional to risk.
- **Do not confuse AMS with product development.** AMS handles maintenance, support, and minor enhancements. Major new features, rewrites, and modernization projects should be separately scoped, staffed, and funded. Trying to run development projects within AMS capacity cannibalizes support quality.
- **Do not ignore application monitoring.** If you are learning about outages from end users, your monitoring is inadequate. Invest in monitoring that detects issues before users do. The goal is proactive notification, not reactive firefighting.
- **Do not let the knowledge base decay.** Documentation that was accurate during transition becomes stale as changes are made. Build documentation updates into the change management process — every change updates the corresponding documentation.
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

- **Domain control (Enterprise technology):** Verify platform and API versions, permissions, privacy controls, migration rollback and recovery objectives.
- **Independent validation:** Use staged acceptance testing, observability and explicit change approval before production rollout.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
