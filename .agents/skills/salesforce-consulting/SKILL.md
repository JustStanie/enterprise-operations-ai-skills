---
name: salesforce-consulting
description: >-
  Use when the user needs salesforce consulting in enterprise technology: Map sales and service
  workflows and stakeholder requirements. Audit objects, data quality, permissions and
  customizations.
---

# Salesforce Consulting

Act as an evidence-led salesforce consulting specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

CRM implementation success is determined by process clarity, data quality, and user adoption, not by platform features. Salesforce works -- it has worked for over two decades. The reason CRM projects fail is that organizations do not do the hard work of defining their customer processes, cleaning their data, and genuinely changing how people sell, service, and market. The technology is the easy part; the organizational transformation is where most implementations succeed or fail.

The foundational question in any CRM engagement is not "what can the platform do?" but "what does your customer journey actually look like?" Starting with the customer experience and working backward to technology configuration produces solutions that users adopt because they match real workflows. Starting with platform capabilities and working forward to user requirements produces feature-rich systems that nobody uses because they do not match how work actually gets done.

Data strategy is the hidden determinant of CRM success. An organization with clean, governed, well-integrated data will succeed with almost any CRM platform. An organization with fragmented, duplicated, ungoverned data will fail with the most sophisticated platform available. Data cleansing, deduplication, integration architecture, and ongoing governance are not optional workstreams; they are prerequisites for CRM value.

## Philosophy

CRM implementations have a dirty secret: the technology is the easy part. Salesforce works. It has been working for 25 years. The reason CRM projects fail is that organizations do not do the hard work of defining their customer processes, cleaning their data, and actually changing how people sell, service, and market.

An expensive Salesforce implementation can still fail to improve business outcomes if teams do not address the real questions: What does your sales process actually look like (not what your VP of Sales says it looks like)? What data do your reps actually need at the point of customer interaction? What are the three things you want leadership to see in a dashboard that they cannot see today?

Start with the customer journey. End with the technology. Everything in between is process design, data strategy, and change management.

## Salesforce Ecosystem Overview

```
Cloud/Product        | Purpose                          | Key Consideration
---------------------|----------------------------------|-----------------------------
Sales Cloud          | Opportunity mgmt, pipeline,      | Foundation for most impls;
                     | forecasting, CPQ                 | deceptively complex at scale
Service Cloud        | Case management, knowledge,      | Omnichannel adds complexity;
                     | omnichannel, field service       | integrate with telephony early
Marketing Cloud      | Email, journeys, advertising,    | Separate data model from core
(incl. Account       | B2B marketing automation         | platform; plan integration
Engagement/Pardot)   |                                  | carefully
Experience Cloud     | Customer/partner portals,        | Licensing model is confusing;
                     | communities, self-service        | plan for scale costs
Tableau              | Analytics, visualization,        | CRM Analytics (f/k/a Einstein
                     | embedded analytics               | Analytics) vs Tableau licensing
MuleSoft             | API management, integration      | Powerful but expensive; evaluate
                     | platform, iPaaS                  | against alternatives
Data Cloud           | CDP, real-time data unification  | Still maturing; evaluate
                     |                                  | carefully for production use
Slack                | Collaboration, workflow,         | Salesforce-Slack integration
                     | customer swarming                | is improving but still evolving
```

## CRM Strategy and Vendor Selection

### When Salesforce Is the Right Choice

```
Strong Fit:                              Weaker Fit:
- B2B sales-driven organizations         - Extremely cost-sensitive (consider
- Complex service operations               HubSpot, Zoho for SMB)
- Large ecosystem and SI availability    - Simple CRM needs (< 50 users)
- Multi-cloud needs (sales + service     - Heavy ERP integration where
  + marketing unified)                     Dynamics 365 has advantages
- AppExchange ecosystem needed           - Organizations unwilling to invest
- Industry-specific solutions              in ongoing admin/development
  (Financial Services Cloud,
  Health Cloud, etc.)
```

### Vendor Comparison (Enterprise CRM)

```
Vendor            | Strengths                     | Weaknesses
------------------|-------------------------------|---------------------------
Salesforce        | Ecosystem, innovation,        | Cost, complexity, platform
                  | market leader, AppExchange    | sprawl, "Salesforce tax"
Microsoft D365    | Tight Office/Teams integration| Smaller SI ecosystem,
                  | good for Microsoft shops      | less flexible than SF
HubSpot           | Ease of use, marketing-first  | Not enterprise-grade for
                  | fast time-to-value            | complex sales processes
ServiceNow CRM    | Strong ITSM integration       | Nascent CRM capabilities
                  |                               | still maturing
SAP C/4HANA       | ERP integration               | Market share declining,
                  |                               | uncertain roadmap
```

## Implementation Approach

### Phase Structure

```
Phase 1: Discovery (4-6 weeks)
  - Stakeholder interviews (sales, service, marketing, ops, IT)
  - Current state process mapping
  - Customer journey mapping
  - Data landscape assessment
  - Requirements prioritization (MoSCoW)
  - Technical architecture design
  - Integration inventory

Phase 2: Design (4-6 weeks)
  - Solution design workshops (show, don't tell)
  - Data model design
  - Security model design (role hierarchy, sharing rules, OWD)
  - Integration design (APIs, middleware, batch vs real-time)
  - UI/UX design (Lightning pages, record types, page layouts)
  - Reporting and analytics design
  - Design sign-off

Phase 3: Build (8-12 weeks)
  - Iterative build in 2-week sprints
  - Configuration (declarative first, always)
  - Custom development (Apex, LWC) only where necessary
  - Integration development
  - Data migration development
  - Unit testing

Phase 4: Test (4-6 weeks)
  - System Integration Testing (SIT)
  - User Acceptance Testing (UAT)
  - Performance testing
  - Security testing
  - Data migration testing (mock loads)
  - Regression testing

Phase 5: Deploy (2-4 weeks)
  - Training delivery (role-based)
  - Data migration execution
  - Cutover to production
  - Go-live support

Phase 6: Hypercare (4-8 weeks)
  - Issue triage and resolution
  - User support and coaching
  - Quick wins and adjustments
  - Transition to BAU support
```

## Data Model Design

### Core Data Model Principles

```
1. Start with the standard object model
   - Accounts, Contacts, Opportunities, Cases, Leads
   - Do NOT create custom objects that replicate standard functionality

2. Design for reporting
   - Every data model decision affects what reports you can build
   - Ask: "What questions will leadership ask?" and model backwards

3. Account hierarchy matters enormously
   - B2B: Define account hierarchy strategy early
   - Parent-child relationships, ultimate parent, legal entities
   - This affects territory management, reporting, and rollups

4. Person Accounts vs Business Accounts
   - B2C: Use Person Accounts (but understand the implications)
   - B2B: Use standard Account + Contact model
   - B2B2C: This is where it gets hard; plan carefully

5. Record types and page layouts
   - Use record types to support different processes on the same object
   - Keep it simple; every record type adds maintenance burden
```

### Data Model Anti-Patterns

```
Anti-Pattern                    | Why It Is Bad                    | Better Approach
--------------------------------|----------------------------------|------------------------
Storing all data in one object  | Governor limits, performance,    | Normalize using related
with 300 custom fields          | unusable UI                      | objects
Creating "Status" fields as    | Cannot report, cannot automate   | Use picklists with
free text                       | cannot enforce process           | restricted values
Duplicating standard fields    | Data gets out of sync,           | Use standard fields,
in custom fields                | confusing for users              | customize labels if needed
No external ID fields           | Integration breaks, duplicate    | Add external IDs for
                                | records                          | every integrated object
```

## Integration Patterns

### Common Integration Approaches

```
Pattern                | Use Case                          | Tools
-----------------------|-----------------------------------|-------------------------
REST API (Real-time)   | Point-to-point, simple CRUD       | Salesforce REST API,
                       | operations                        | Named Credentials
MuleSoft (iPaaS)       | Complex, many-to-many             | Anypoint Platform,
                       | enterprise integration            | pre-built connectors
Middleware (Other)     | Dell Boomi, Informatica,          | Depends on existing
                       | Workato, Jitterbit                | middleware investment
Platform Events        | Event-driven, async, pub/sub      | Salesforce Platform
                       |                                   | Events, Change Data Capture
Bulk API               | Large data volumes (>10K records) | Salesforce Bulk API 2.0,
                       | batch processing                  | Data Loader
Salesforce Connect     | Real-time external data            | OData, cross-org adapters
(External Objects)     | without storing in Salesforce     |
```

### Integration Design Principles

```
1. Identify the system of record for every data entity
   - One source of truth per data object; everything else subscribes

2. Design for failure
   - APIs will fail. Build retry logic, dead-letter queues, and monitoring.

3. Respect governor limits
   - Salesforce has API call limits, query limits, and DML limits
   - Design batch processes to stay within limits

4. Use middleware for anything beyond point-to-point
   - Two systems can talk directly; three or more need an integration layer

5. Idempotency is non-negotiable
   - Every integration must handle duplicate messages gracefully
   - Use external IDs and upsert operations
```

## Customization vs Configuration

```
ALWAYS prefer configuration (declarative) over customization (code):

Configuration (Declarative):         Customization (Code):
  - Flows and Process Builder          - Apex triggers and classes
  - Validation Rules                   - Lightning Web Components (LWC)
  - Formula Fields                     - Visualforce pages (legacy)
  - Page Layouts and Record Types      - Custom REST/SOAP services
  - Approval Processes                 - Batch Apex
  - Reports and Dashboards             - Platform Events (code handlers)

Decision Rule:
  Can this be done with Flows? --> YES --> Use Flows
                                  NO  --> Can it be done with other declarative tools?
                                            YES --> Use declarative tools
                                            NO  --> Write Apex/LWC (document why)
```

## Salesforce Governance

### Governance Model

```
Governance Body          | Frequency  | Participants              | Decisions
-------------------------|------------|---------------------------|------------------
Executive Steering       | Monthly    | CRO, CIO, SVPs            | Budget, strategic
Committee                |            |                           | direction, priorities
CRM Center of Excellence | Bi-weekly  | SF Admin, Architect,      | Technical standards,
                         |            | Business Analysts         | release planning
Change Advisory Board    | Weekly     | Admin, Dev Lead, QA,      | Production changes,
                         |            | Business Owner            | deployment approval
User Advisory Group      | Monthly    | Super users, champions    | Feature requests,
                         |            | from each business unit   | adoption feedback
```

### Release Management

```
Environment Strategy:
  Developer Sandboxes --> Developer Pro Sandbox --> Partial Copy (UAT) --> Production

Release Cadence:
  - Major releases: Quarterly (aligned with Salesforce releases)
  - Minor releases: Bi-weekly (bug fixes, small enhancements)
  - Hotfixes: As needed (production issues only)

Deployment:
  - Use Salesforce CLI (sf/sfdx) and CI/CD pipelines
  - Never deploy directly to production from a developer sandbox
  - All changes go through code review and UAT
  - Use source-driven development with version control (Git)
```

## User Adoption

### Adoption Framework

```
Adoption Pillar          | Actions
-------------------------|--------------------------------------------------
Executive Sponsorship    | VP of Sales uses the system publicly, references
                         | dashboards in meetings, does not accept data
                         | outside of Salesforce
Process Alignment        | Salesforce IS the process, not a system you update
                         | after doing real work elsewhere
Data Quality             | If the data is bad, people will not trust or use
                         | the system; invest in data quality from day 1
Training                 | Role-based, scenario-based, not feature-based;
                         | "here's how you close a deal" not "here's a button"
Measurement              | Track login rates, record creation, pipeline
                         | updates, report usage; make adoption visible
Feedback Loops           | Quarterly user surveys, super user office hours,
                         | visible roadmap of user-requested improvements
```

### Adoption Metrics to Track

```
Leading Indicators:
  - Daily active users / total licensed users
  - Records created/updated per user per week
  - Opportunity stage progression velocity
  - Case resolution time

Lagging Indicators:
  - Pipeline accuracy (forecast vs actual)
  - Win rate improvement
  - Customer satisfaction (CSAT/NPS) improvement
  - Revenue per rep
```

## CRM Migration (Legacy to Salesforce)

### Migration Approach

```
1. Data Assessment
   - Profile source data quality
   - Map source entities to Salesforce objects
   - Identify data gaps and enrichment needs
   - Define historical data cutoff (do NOT migrate everything)

2. Data Cleansing (before migration, not after)
   - Deduplicate accounts and contacts
   - Standardize address, phone, email formats
   - Enrich with third-party data (D&B, ZoomInfo)
   - Validate email addresses

3. Migration Execution
   - Use Salesforce Data Loader or Informatica/Talend for ETL
   - Migrate in dependency order: Users --> Accounts --> Contacts
     --> Opportunities --> Activities --> Cases
   - Preserve external IDs for all migrated records
   - Run reconciliation counts after each object load

4. Validation
   - Record count reconciliation (source vs target)
   - Sample data spot checks (minimum 5% of records)
   - Relationship validation (lookups, master-detail)
   - Business user sign-off on data accuracy
```

## Anti-Patterns

- **Implementing every feature the platform offers.** Salesforce has enormous breadth of capability. Activating features because they exist, rather than because they solve specific business problems, creates complexity that confuses users, increases maintenance burden, and slows future development.
- **Treating CRM as a management surveillance tool rather than a user productivity tool.** Systems designed primarily to give leadership visibility into sales activity, rather than to help salespeople sell more effectively, produce adversarial adoption dynamics where users enter minimum data to satisfy reporting requirements.
- **Customizing extensively where configuration would suffice.** Custom Apex code, custom Lightning components, and custom integrations should be a last resort, not a first response. Every customization adds technical debt, upgrade complexity, and maintenance burden. Exhaust declarative configuration before writing code.
- **Migrating dirty data into the new system.** Loading duplicated, outdated, and inconsistent data from legacy systems into a new CRM guarantees that users will not trust the system from day one. Data cleansing before migration is not optional; it is the foundation of user adoption.
- **Going live without a sustained adoption and optimization plan.** The go-live date is the beginning of CRM value creation, not the end. Without ongoing training reinforcement, feature rollout, feedback collection, and continuous optimization, adoption degrades and the system calcifies into an expensive contact database.

## What NOT To Do

- **Do not over-customize Salesforce.** Every line of Apex you write is a line you must maintain forever. Salesforce releases three times a year; custom code can break with each release. Stay declarative.
- **Do not ignore the security model.** Org-wide defaults, role hierarchy, sharing rules, and profile/permission set design must be planned upfront. Retrofitting security is painful and error-prone.
- **Do not treat Salesforce as a data dump.** If users have to enter 40 fields to create an opportunity, they will not do it. Design for the minimum viable data set and expand over time.
- **Do not skip data migration testing.** Run at least three mock migrations before go-live. Each one will reveal problems you did not anticipate.
- **Do not buy clouds you do not need.** Salesforce sales teams are excellent at selling multi-cloud deals. Buy what you need now; add clouds when you have a proven use case and adoption of the current platform.
- **Do not build reports nobody asked for.** Build the 10 reports and dashboards that leadership actually needs. Then let power users build the rest.
- **Do not go live without a data quality strategy.** Duplicate management rules, validation rules, and data stewardship processes must be in place at go-live, not "phase 2."
- **Do not neglect Salesforce administration.** A Salesforce org without a dedicated admin degrades rapidly. Budget for at least one full-time admin per 200 users.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.

## Review & Production Validation (2026-10-31)

- **Domain control (Enterprise technology):** Verify platform and API versions, permissions, privacy controls, migration rollback and recovery objectives.
- **Independent validation:** Use staged acceptance testing, observability and explicit change approval before production rollout.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
