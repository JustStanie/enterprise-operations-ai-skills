---
name: enterprise-architecture
description: >-
  Use when the user needs enterprise architecture in enterprise technology: Map capabilities,
  application portfolio, integrations and technical debt. Define principles and decision
  records for target state.
---

# Enterprise Architecture

Act as an evidence-led enterprise architecture specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

Good enterprise architecture is not about frameworks and diagrams; it is about making technology decisions that are aligned with business strategy, consistent across the organization, and practical enough to be implemented. The best enterprise architects spend the majority of their time talking to people -- business leaders, developers, and operations teams -- and a minority documenting decisions. The worst spend most of their time in modeling tools and wonder why nobody follows their reference architectures.

Enterprise architecture has an image problem because too many EA practices produce beautiful documentation that nobody reads and make technology decisions that nobody follows. The result is an EA function perceived as overhead rather than value. To be effective, EA must be a decision-making support function that accelerates strategic technology choices, not a bureaucratic gate that slows delivery without adding insight.

The pragmatic enterprise architect accepts that perfect architecture is the enemy of delivered architecture. Organizations have legacy systems, technical debt, political constraints, and budget limitations that prevent theoretical ideals from being realized. The architect's job is to define a target direction, establish guardrails that prevent the worst decisions, and provide practical migration paths that acknowledge the starting point without being imprisoned by it.

## Philosophy

Enterprise architecture has an image problem. Too many EA practices produce beautiful diagrams that nobody reads and make technology decisions that nobody follows. The result is an EA team that is seen as overhead rather than value.

Good enterprise architecture is not about frameworks and diagrams. It is about making technology decisions that are aligned with business strategy, consistent across the organization, and practical enough to actually be implemented. The best enterprise architects I have worked with spend 70% of their time talking to people (business leaders, developers, operations) and 30% documenting decisions. The worst spend 90% of their time in Archimate modeling tools and wonder why nobody follows their reference architectures.

The fundamental purpose of EA is to ensure that technology investments are coherent and compounding rather than fragmented and conflicting. Every architecture decision should make the next decision easier, not harder.

## EA Frameworks — Pragmatic View

### TOGAF Standard (10th Edition) — Pragmatic Use

TOGAF is comprehensive, but most organizations need a carefully selected subset. Check the version and licensing of the adopted standard and adapt its ADM and architecture-governance concepts to decision needs.

```
TOGAF Component              | Use It?  | Why
-----------------------------|----------|--------------------------------------------
Architecture Development     | Selectively | The full ADM cycle is too heavy for most
Method (ADM)                 |          | orgs. Use phases A, B, C, D, E selectively.
Architecture Repository      | YES      | Central place for decisions, standards,
                             |          | patterns. Essential for consistency.
Architecture Governance      | YES      | Review boards, compliance reviews, and
                             |          | waivers. This is where EA adds real value.
Architecture Content         | Selectively | Use catalogs and matrices. Skip the
Framework                    |          | full metamodel unless you are a large govt.
Architecture Principles      | YES      | 10-15 principles that guide every decision.
                             |          | This is the most underrated TOGAF artifact.
Enterprise Continuum         | NO       | Theoretical taxonomy. Adds complexity,
                             |          | little practical value.
```

### Architecture Principles — Template

```
Principle: [Name]
Statement: [One sentence declaring the principle]
Rationale: [Why this principle matters to the business]
Implications: [What this means in practice — specific and actionable]

Example:
Principle: API-First Design
Statement: All system capabilities must be exposed through well-defined APIs
           before building any user interface.
Rationale: Enables reuse, integration flexibility, and channel independence.
           Reduces point-to-point integration debt.
Implications:
  - Every new system must publish API specifications before development begins
  - API contracts are reviewed by the integration architecture team
  - No direct database-to-database integrations are permitted
  - API gateway is mandatory for all external-facing APIs
```

## Architecture Domains

### Business Architecture

```
Key Artifacts:
  - Business Capability Map (what the business does, not how)
  - Value Stream Map (how value flows to customers)
  - Business Process Models (BPMN for key processes)
  - Organization Map (aligned to capabilities)

Why It Matters:
  Business architecture is the bridge between strategy and technology.
  Without it, technology investments are disconnected from business value.

  The Business Capability Map is the single most important EA artifact.
  It provides a stable, strategy-aligned view of the business that
  changes slowly even as org charts and processes change rapidly.
```

### Application Architecture

```
Key Artifacts:
  - Application Portfolio Catalog (all applications with metadata)
  - Application Interaction Diagram (how apps communicate)
  - Application Roadmap (current state --> target state)
  - Technology Fitness Assessment (health score per application)

Application Health Scoring:
  Dimension              | Criteria
  -----------------------|------------------------------------------
  Business Value         | Revenue impact, user count, strategic alignment
  Technical Health       | Age, maintainability, security, performance
  Cost Efficiency        | TCO per user, license utilization
  Risk                   | Single points of failure, vendor viability
  Cloud Readiness        | Architecture compatibility with cloud
```

### Data Architecture

```
Key Artifacts:
  - Conceptual Data Model (entities and relationships)
  - Data Flow Diagrams (how data moves between systems)
  - Data Ownership Matrix (who owns what data)
  - Master Data Strategy (golden record approach)
  - Data Quality Framework (measurement and remediation)

Core Principle: Every data entity has ONE system of record.
If you cannot name the system of record for "Customer" in your
organization in under 5 seconds, you have a data architecture problem.
```

### Technology Architecture

```
Key Artifacts:
  - Technology Standards (approved technologies by category)
  - Technology Radar (adopt, trial, assess, hold)
  - Infrastructure Architecture (network, compute, storage)
  - Security Architecture (reference architecture, controls)
  - Platform Architecture (shared platforms and services)
```

## Current State Assessment

### How to Assess Current State Architecture

```
Step 1: Application Portfolio Discovery (2-4 weeks)
  - Inventory all applications (use ServiceNow CMDB, manual survey, or both)
  - Classify by business capability alignment
  - Score for health (business value, technical health, cost, risk)
  - Map dependencies and integrations

Step 2: Technology Landscape Mapping (2-3 weeks)
  - Inventory infrastructure (servers, databases, middleware, network)
  - Map technology standards (what is approved vs actual usage)
  - Identify shadow IT and ungoverned technology
  - Assess vendor contracts and license compliance

Step 3: Integration Architecture Assessment (2-3 weeks)
  - Map all integration patterns (API, file, database, messaging)
  - Identify point-to-point integrations (each one is debt)
  - Assess integration middleware (ESB, iPaaS, custom)
  - Calculate integration complexity score

Step 4: Capability Gap Analysis (1-2 weeks)
  - Overlay application portfolio on business capability map
  - Identify over-served capabilities (redundant applications)
  - Identify under-served capabilities (manual processes, gaps)
  - Prioritize gaps by business impact
```

## Target State Design and Roadmap

### Roadmap Development

```
Input: Current state assessment + business strategy + technology trends

Process:
1. Define Architecture Vision (aligned to 3-5 year business strategy)
2. Design Target State Architecture (by domain)
3. Perform Gap Analysis (current vs target, by domain)
4. Define Transition Architectures (intermediate states)
5. Create Initiative Portfolio (projects to close gaps)
6. Prioritize Initiatives (business value, dependencies, feasibility)
7. Sequence into Roadmap (typically 18-36 month horizon)

Prioritization Framework:
  High Business Value + Low Complexity = DO FIRST (Quick Wins)
  High Business Value + High Complexity = PLAN CAREFULLY (Strategic)
  Low Business Value  + Low Complexity  = DO IF TIME (Tactical)
  Low Business Value  + High Complexity = DO NOT DO (Avoid)
```

## API Strategy and API-First Design

### API Strategy Components

```
1. API Governance
   - API design standards (REST, naming conventions, versioning)
   - API review process (architecture team reviews all new APIs)
   - API lifecycle management (versioning, deprecation, sunsetting)

2. API Platform
   - API Gateway (Kong, Apigee, AWS API Gateway, Azure APIM)
   - Developer Portal (documentation, onboarding, API keys)
   - API Management (rate limiting, analytics, monetization)

3. API Design Standards
   - RESTful by default; GraphQL for complex query patterns
   - OpenAPI 3.x specification mandatory for all APIs
   - Consistent naming: lowercase, hyphenated, noun-based resources
   - Versioning: URL-based (v1/v2) for simplicity
   - Pagination, filtering, sorting standards
   - Error response format standardized

4. API Security
   - OAuth 2.0 / OIDC for authentication
   - API keys for identification (not authentication)
   - Rate limiting and throttling
   - Input validation and schema enforcement
   - Mutual TLS for service-to-service
```

## Microservices vs Monolith

```
When to Choose Monolith:
  - Small team (< 20 developers)
  - Well-understood, stable domain
  - Simple deployment requirements
  - Early-stage product (discovery phase)
  - Limited operational maturity (no k8s, no CI/CD)

When to Choose Microservices:
  - Large teams needing independent deployment
  - Different scaling requirements per component
  - Different technology requirements per component
  - Mature DevOps and platform engineering capability
  - Clear bounded contexts in the domain

The Pragmatic Middle Ground: Modular Monolith
  - Single deployment unit
  - Well-defined module boundaries (enforced in code)
  - Can be decomposed into microservices later if needed
  - 80% of the organizational benefits, 20% of the operational cost

My strong recommendation: Start with a modular monolith. Extract
microservices only when you have a clear, measurable reason
(scale, team independence, polyglot requirements). "Because Netflix
does it" is not a valid reason.
```

## Integration Architecture

### Pattern Selection

```
Pattern              | Use When                          | Technology Options
---------------------|-----------------------------------|----------------------
API Gateway          | External consumers, partner APIs  | Kong, Apigee, AWS APIM
iPaaS                | Cloud-to-cloud, SaaS integration  | MuleSoft, Boomi, Workato
Event Streaming      | Real-time, decoupled, high volume | Kafka, AWS EventBridge,
                     |                                   | Azure Event Hubs
ESB (Legacy)         | Existing investment, on-prem      | IBM MQ, TIBCO, Oracle SOA
                     | heavy integration                 | (consider sunset plan)
ETL/ELT              | Batch data movement, analytics    | Informatica, dbt, Fivetran,
                     |                                   | AWS Glue
File Transfer        | Legacy systems, batch, B2B/EDI    | MFT tools, SFTP, AS2
```

### Integration Anti-Patterns

```
Anti-Pattern                          | Why It Hurts
--------------------------------------|----------------------------------------
Point-to-point spaghetti             | N systems = N*(N-1)/2 potential integrations;
                                     | unmanageable at scale
Database-to-database integration      | Couples schemas, bypasses business logic,
                                     | creates hidden dependencies
"God API" that does everything        | Monolithic integration point; changes to
                                     | one consumer affect all consumers
Synchronous chains of 5+ services    | Latency compounds; one slow service
                                     | degrades the entire chain
No error handling or retry logic      | Silent failures corrupt data and erode
                                     | trust in integrations
```

## Technical Debt Management

### Technical Debt Scoring

```
Debt Category            | Indicators                      | Impact
-------------------------|----------------------------------|------------------
Architecture Debt        | Monolithic systems, tight        | Slows all new
                         | coupling, no API layer           | development
Code Debt                | No tests, copy-paste code,       | High defect rates,
                         | outdated frameworks              | slow changes
Infrastructure Debt      | End-of-life OS, manual deploys,  | Security risk,
                         | no IaC                           | operational fragility
Data Debt                | No master data, inconsistent     | Bad reporting,
                         | schemas, no data quality         | integration failures
Security Debt            | Unpatched systems, no MFA,       | Breach risk,
                         | weak access controls             | compliance failures

Approach:
  1. Inventory and score all technical debt
  2. Quantify business impact (risk, opportunity cost, operational cost)
  3. Allocate 15-20% of engineering capacity to debt reduction
  4. Prioritize by: security debt first, then architecture debt, then code debt
  5. Track debt metrics quarterly; make them visible to leadership
```

## Architecture Governance

### Architecture Review Board (ARB)

```
Purpose: Ensure technology decisions align with architecture principles,
         standards, and roadmap.

Cadence: Bi-weekly (weekly for large organizations)

Participants:
  - Chief Architect (chair)
  - Domain Architects (application, data, integration, security)
  - Engineering Leads (rotating)
  - Business representative (for context)

What Gets Reviewed:
  - New application/service proposals
  - Technology stack deviations from standards
  - Integration designs
  - Major infrastructure changes
  - Architecture waiver requests

Decision Outcomes:
  - APPROVED: Aligns with standards and principles
  - APPROVED WITH CONDITIONS: Minor adjustments needed
  - WAIVER GRANTED: Deviation accepted with documented rationale and expiry
  - REJECTED: Does not align; rework required

Critical Success Factor:
  The ARB must add value, not friction. Review turnaround should be < 1 week.
  If teams avoid the ARB, the process is broken. If the ARB rubber-stamps
  everything, it is pointless. Find the balance.
```

### Technology Radar

```
Ring        | Meaning                              | Action
------------|--------------------------------------|---------------------------
Adopt       | Proven, recommended, default choice  | Use for new projects
Trial       | Worth pursuing; use in non-critical   | Pilot in controlled settings
            | projects to gain experience           |
Assess      | Interesting; worth exploring          | Research, attend talks, POC
Hold        | Do not start new work with this       | Migrate away over time
            | technology                            |

Update Cadence: Quarterly
Governed By: Architecture team with engineering input
Published: Internal developer portal (visible to all engineers)
```

## Anti-Patterns

- **Producing reference architectures that nobody can implement.** Theoretical target-state diagrams disconnected from the organization's current reality, budget, and skills produce documentation that gathers dust. Architecture must include practical migration paths from the current state.
- **Operating as a governance gate without providing decision-making value.** Architecture review boards that exist only to approve or reject requests without offering alternatives, trade-off analysis, or implementation guidance are perceived as bureaucratic obstacles rather than strategic enablers.
- **Adopting frameworks as ends in themselves.** TOGAF, Zachman, and other frameworks are tools for organizing architectural thinking, not goals to achieve. Organizations that spend months customizing framework templates without making a single technology decision have confused the map for the territory.
- **Mandating microservices architecture for every application.** Microservices are appropriate for specific contexts: high-scale, independently deployable components with clear bounded contexts. Applying microservices to every application creates distributed system complexity that many organizations lack the operational maturity to manage.
- **Ignoring developer experience in architectural decisions.** Architectures that look elegant on whiteboards but create painful development workflows, complex deployment pipelines, or incomprehensible debugging experiences will be circumvented by delivery teams who need to ship software on schedule.

## What NOT To Do

- **Do not create architecture documents that nobody reads.** If your architecture artifacts are not referenced in engineering decisions, they are waste. Ruthlessly prune documentation to what is actually used.
- **Do not design for the organization you wish you had.** Design for the organization you actually have. A microservices architecture is useless if your team cannot operate Kubernetes.
- **Do not let the ARB become a bottleneck.** Architecture governance should enable speed, not prevent it. If your ARB has a 6-week backlog, you have a process problem.
- **Do not ignore the business architecture.** Technology architecture without business context is just technology for technology's sake. Always start with "what business capability does this serve?"
- **Do not mandate standards without providing platforms.** Saying "use Kubernetes" without providing a managed Kubernetes platform is setting teams up for failure. Standards must come with enablement.
- **Do not treat technical debt as someone else's problem.** If the architecture team created the standards that led to the debt (or failed to prevent it), the architecture team owns the remediation roadmap.
- **Do not chase architectural purity.** Perfect is the enemy of good. A "good enough" architecture that ships is infinitely more valuable than a "perfect" architecture that exists only in a slide deck.
- **Do not build reference architectures in isolation.** Reference architectures built without input from the teams that will implement them are ignored. Co-create with engineering.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.
