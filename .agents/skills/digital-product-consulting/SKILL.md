---
name: digital-product-consulting
description: >-
  Use when the user needs digital product consulting in enterprise technology: Define user
  problem and measurable business outcome. Interview stakeholders and map the current journey.
---

# Digital Product Consulting

Act as an evidence-led digital product consulting specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

Digital product development in the enterprise requires a fundamental shift from project thinking to product thinking. A project has a start date, an end date, and a fixed scope. A product has a vision, a set of customers, and an evolving backlog that never ends. When enterprises fund product development as a twelve-month project with fixed requirements, the outcome is predictable: a waterfall delivery with agile ceremonies, producing something nobody wants to use.

Real product development requires three organizational shifts: from requirements to hypotheses, from fixed scope to fixed time, and from committee governance to empowered product teams. The product manager must own decisions, not a steering committee that meets monthly. The team must ship the most valuable thing possible within a fixed time box, not negotiate scope changes through change request processes. And every feature must be treated as a hypothesis to be tested with real users, not a specification to be implemented exactly as written.

The build-versus-buy decision is the most consequential architectural choice in enterprise product development. Enterprises consistently overestimate their ability to build and maintain custom software and underestimate the capability and adaptability of commercial platforms. The default should be buy unless the capability is a genuine source of competitive differentiation, the market offers no viable solution, and the organization has the engineering talent to build and maintain the solution over its full lifecycle.

## Philosophy

Most enterprises confuse projects with products. A project has a start date, an end date, and a fixed scope. A product has a vision, a set of customers, and an evolving backlog that never ends. When an enterprise says "we want to build a digital product" but funds it as a 12-month project with a fixed requirements document, the outcome is predictable: a waterfall delivery with agile ceremonies sprinkled on top, resulting in something nobody actually wants to use.

Real product development in an enterprise context requires three shifts: from requirements to hypotheses (we think this will create value, and we will test it), from fixed scope to fixed time (we will ship the most valuable thing we can in 8 weeks), and from committee governance to empowered product teams (the product manager makes decisions, not a steering committee that meets monthly).

The consulting angle adds another layer of complexity. Most consulting engagements are scoped as projects with defined deliverables and timelines. Translating product thinking into SOW language is an art form, and it requires educating the client that "we don't know exactly what we'll build, but we know the value we'll deliver" is not a sign of incompetence but a sign of intellectual honesty.

## Product Discovery

### Discovery Framework

```
Discovery answers four questions (Marty Cagan's framework):

1. VALUABLE: Will customers/users actually want this?
   Methods: Customer interviews, surveys, market analysis
   Artifacts: Value proposition canvas, jobs-to-be-done map

2. USABLE: Can users figure out how to use it?
   Methods: Prototyping, usability testing, card sorting
   Artifacts: Wireframes, interactive prototypes, user flows

3. FEASIBLE: Can we build it with available tech and resources?
   Methods: Technical spike, architecture review, capacity assessment
   Artifacts: Technical feasibility report, architecture options

4. VIABLE: Does it work for the business?
   Methods: Business case modeling, stakeholder alignment, regulatory review
   Artifacts: Business case, go-to-market plan, compliance checklist
```

### Discovery Sprint Structure (Enterprise Context)

```
Week 1: Understand
  - Stakeholder interviews (executive sponsors, business owners, IT)
  - Customer research (interviews, observation, data analysis)
  - Competitive landscape review
  - Current state journey mapping
  - Problem framing workshop

Week 2: Define
  - Opportunity prioritization (value vs effort matrix)
  - Target persona definition
  - Jobs-to-be-done mapping
  - Success metrics definition (OKRs or KPIs)
  - Constraint identification (regulatory, technical, organizational)

Week 3: Ideate and Prototype
  - Design studio / ideation workshops
  - Concept sketching (multiple options, not one)
  - Rapid prototyping (Figma, paper prototypes)
  - Technical feasibility assessment
  - Internal stakeholder feedback

Week 4: Validate
  - User testing with prototypes (5-8 target users minimum)
  - Business case refinement with validated assumptions
  - Technical architecture outline
  - Build roadmap and team plan
  - Go/no-go recommendation to sponsors

Deliverables:
  - Product vision and strategy document
  - Validated prototype with user feedback
  - Prioritized feature backlog (MVP scope)
  - Technical architecture and stack recommendation
  - Business case with ROI projections
  - Build plan (team, timeline, budget)
```

## Design Thinking in Enterprise Context

### Adapting Design Thinking for Enterprise

```
Silicon Valley Design Thinking:      Enterprise Adaptation:
  - Post-its and whiteboards           - Virtual workshops (Miro/Mural)
  - "Move fast and break things"       - "Move deliberately, don't break
                                          production systems"
  - Talk to any customer directly      - Customer access through sales/CS
                                          teams, NDAs, legal approval
  - Ship to production today           - Security review, architecture
                                          review, compliance review
  - Small team, flat hierarchy         - Matrix organization, multiple
                                          stakeholders, governance

What Works:
  - Empathy mapping and customer interviews (always valuable)
  - Prototyping before building (saves millions in wrong features)
  - Cross-functional workshops (breaks silos, builds alignment)
  - Iteration based on user feedback (better than HiPPO decisions)

What Needs Adaptation:
  - Timeline: Enterprise discovery takes 4-6 weeks, not 5 days
  - Stakeholders: Include compliance, security, legal, architecture
  - Validation: Larger sample sizes, more rigorous testing
  - Documentation: Enterprises need decision records, not just post-it walls
```

## MVP and Prototype Development

### MVP Definition (Enterprise Edition)

```
What MVP Means:                     What MVP Does NOT Mean:
  - Smallest product that tests      - A buggy, half-finished product
    the core value hypothesis        - A prototype with a database
  - Functional, polished for         - Version 1.0 with every feature
    the scope it covers                the business requested
  - Deployed to real users           - An internal demo nobody uses
  - Instrumented for measurement     - Something built without security
                                       or compliance considerations

Enterprise MVP Scope Framework:
  1. Identify the riskiest assumption (what must be true for this to work?)
  2. Design the smallest product that tests this assumption
  3. Define success criteria before building (metric + threshold)
  4. Time-box the build (6-10 weeks maximum)
  5. Launch to a controlled group (not the entire enterprise)
  6. Measure, learn, decide: scale, pivot, or stop
```

### Prototype Fidelity Ladder

```
Level           | Purpose                     | Tools              | Time
----------------|-----------------------------|--------------------|--------
Paper Sketch    | Explore concepts rapidly    | Paper, whiteboard  | Hours
Lo-Fi Wireframe | Structure and flow          | Balsamiq, Whimsical| Days
Mid-Fi Prototype| Interaction design          | Figma, Sketch      | 1-2 weeks
Hi-Fi Prototype | Visual design and UX testing| Figma, Adobe XD    | 2-3 weeks
Coded Prototype | Technical feasibility       | React, Flutter     | 3-4 weeks

Rule: Use the lowest fidelity that answers your current question.
Do NOT build a hi-fi prototype to validate whether the problem exists.
```

## Agile Delivery in Consulting Engagements

### Consulting Agile Model

```
Sprint 0 (Foundation, 2 weeks):
  - Team onboarding and ways of working
  - Development environment setup
  - Architecture decisions and tech stack finalization
  - CI/CD pipeline setup
  - Backlog refinement and sprint planning
  - Design system foundations

Sprints 1-N (Delivery, 2-week sprints):
  - Sprint planning: PO prioritizes; team commits
  - Daily standups: 15 min, blockers focus
  - Sprint review: Demo to stakeholders (every sprint, non-negotiable)
  - Sprint retrospective: Continuous improvement
  - Backlog refinement: Ongoing (not a meeting; continuous activity)

Consulting-Specific Adaptations:
  - Steering committee: Monthly (not weekly; trust the product team)
  - Status reporting: Weekly written update to client leadership
  - Scope management: Change requests through backlog reprioritization,
    not scope change documents (educate the client on this)
  - Quality gates: Security review at defined milestones, not at the end
  - Knowledge transfer: Continuous, not a phase at the end
```

### SOW Structure for Product Engagements

```
Traditional SOW:                     Product-Oriented SOW:
  "Deliver features A, B, C, D"       "Deliver outcomes X, Y, Z"
  Fixed scope, variable timeline       Fixed time, variable scope
  Change orders for scope changes      Backlog reprioritization
  Acceptance criteria per feature      Success metrics per sprint
  Waterfall milestones                 Sprint deliverables

Recommended SOW Structure:
  - Phase 1: Discovery (fixed scope, fixed price, 4-6 weeks)
  - Phase 2: MVP Build (T&M or managed capacity, 8-12 weeks)
  - Phase 3: Iterate and Scale (managed capacity, ongoing sprints)
  - Each phase has go/no-go decision point
  - Client can exit after any phase
```

## Product Management vs Project Management

```
Dimension            | Product Manager              | Project Manager
---------------------|------------------------------|-------------------
Focus                | Outcomes (user/business      | Outputs (deliverables,
                     | value delivered)              | milestones, budget)
Mindset              | "What should we build?"       | "How do we build it
                     |                               | on time and budget?"
Backlog              | Prioritized by value;         | Fixed scope; managed
                     | continuously evolving         | through change control
Success Metric       | Adoption, engagement,         | On-time, on-budget,
                     | revenue, NPS                  | in-scope
Lifecycle            | Ongoing (product lives        | Finite (project ends)
                     | beyond any single release)    |
Decision Authority   | Decides WHAT to build         | Decides HOW to deliver
                     | (with input from team)        | (with input from PM)

Enterprise Reality:
  Most enterprises have project managers but not product managers.
  Introducing product management requires:
  - Executive buy-in for outcome-based measurement
  - Shifting funding from project-based to product-based
  - Hiring or training product managers
  - Accepting that scope will flex based on learning
```

## User Research for Enterprise Products

### Research Methods by Phase

```
Phase              | Methods                           | Sample Size
-------------------|-----------------------------------|-------------
Discovery          | Interviews, contextual inquiry,   | 8-15 users
                   | diary studies, shadowing          |
Definition         | Card sorting, tree testing,        | 10-20 users
                   | jobs-to-be-done interviews         |
Design             | Usability testing, A/B testing,    | 5-8 per round
                   | preference testing                 | (iterative)
Post-Launch        | Analytics, surveys, NPS,           | All users
                   | support ticket analysis            | (quantitative)

Enterprise-Specific Challenges:
  - Access to customers: Work through sales/CS teams; plan 4 weeks lead time
  - Internal products: Users are employees; easier access but feedback bias
  - B2B products: Fewer users, higher stakes per user; deeper interviews needed
  - Compliance: NDAs, data privacy, recording consent required for all research
```

## Technology Stack Selection

### Selection Framework

```
Decision Criteria:
  1. Team Skills: What can the team build and maintain?
  2. Ecosystem: What does the organization already use?
  3. Requirements: Performance, scale, regulatory needs?
  4. Talent Market: Can you hire developers for this stack?
  5. Long-term Viability: Is this technology growing or declining?
  6. Total Cost: License + development + hosting + maintenance

Enterprise Web/Mobile Stack Options:
  Frontend: React, Angular (enterprise-heavy), Vue.js, Next.js
  Mobile:   React Native, Flutter, native (Swift/Kotlin)
  Backend:  Node.js, Java/Spring Boot, .NET, Python/Django
  Database: PostgreSQL, SQL Server, MongoDB, DynamoDB
  Cloud:    AWS, Azure, GCP (align with enterprise standard)
  CI/CD:    GitHub Actions, GitLab CI, Azure DevOps, Jenkins

Decision Rule:
  If the enterprise has a standard stack, use it unless there is a
  compelling technical reason not to. Fighting the enterprise ecosystem
  on technology choices is a battle you will lose, and the ongoing
  support costs are higher when you diverge from organizational standards.
```

## Build vs Buy Analysis

### Decision Framework

```
Factor                  | Favors Build               | Favors Buy
------------------------|----------------------------|----------------------------
Competitive advantage   | Core differentiator        | Commodity capability
Customization needs     | Highly unique processes    | Standard processes acceptable
Time to market          | Long runway acceptable     | Need it now
Total cost (5-year)     | Large user base amortizes  | Small user base makes custom
                        | development cost           | development expensive
Internal capability     | Strong engineering team    | Limited engineering capacity
Vendor landscape        | No good vendors exist      | Multiple mature vendors
Integration complexity  | Deep integration needed    | Standard APIs available
Control requirement     | Full control over roadmap  | Vendor roadmap acceptable

Build vs Buy Evaluation Template:
  For each option, score (1-5) on:
  - Functional fit (how well does it meet requirements?)
  - Time to value (how quickly can we get to production?)
  - Total cost of ownership (5-year: implementation + operation)
  - Integration effort (how hard to integrate with existing systems?)
  - Vendor/technical risk (what could go wrong?)
  - Scalability (will it grow with us?)
  - Flexibility (how easy to change/extend?)
```

### Vendor Evaluation Framework

```
Phase 1: Market Scan (2 weeks)
  - Identify 10-15 vendors through Gartner, Forrester, G2, references
  - Apply basic filters (budget, industry, scale)
  - Shortlist 4-6 vendors for detailed evaluation

Phase 2: RFI/RFP (3-4 weeks)
  - Issue structured RFI with weighted evaluation criteria
  - Require demo environment access (not just slide decks)
  - Request customer references (similar industry and scale)

Phase 3: Deep Evaluation (3-4 weeks)
  - Vendor demonstrations with scripted scenarios (your scenarios, not theirs)
  - Technical architecture review
  - Security and compliance assessment
  - Integration proof of concept
  - Reference calls (ask about failures, not just successes)

Phase 4: Selection and Negotiation (2-3 weeks)
  - Weighted scoring across all criteria
  - Commercial negotiation (always negotiate; list price is a starting point)
  - Contract review (exit clauses, SLAs, data ownership)
  - Final selection with documented rationale

Evaluation Weighting (Typical):
  Functional fit:           30%
  Total cost of ownership:  20%
  Technical architecture:   15%
  Vendor viability:         15%
  Implementation ease:      10%
  References:               10%
```

## Product-Led Transformation

### Shifting from Project to Product

```
Transformation Dimensions:

1. Funding Model
   From: Annual project-based funding with business cases per project
   To:   Persistent product teams with annual capacity budgets
   Timeline: 12-18 months to shift (align with budget cycle)

2. Team Structure
   From: Matrix organizations, pooled resources, project assignments
   To:   Stable, cross-functional product teams (PM, design, eng, QA)
   Timeline: 6-12 months (start with 2-3 pilot teams)

3. Governance
   From: Stage-gate reviews, steering committees, change control boards
   To:   Quarterly business reviews, OKR tracking, product demos
   Timeline: 3-6 months (pilot with one team, then expand)

4. Metrics
   From: On-time, on-budget, in-scope
   To:   User adoption, business outcome delivery, customer satisfaction
   Timeline: Immediate (start measuring differently now)

5. Culture
   From: "Tell me the requirements and I will build it"
   To:   "Let's discover what the customer needs and test our assumptions"
   Timeline: 18-36 months (culture is the slowest to change)
```

### Common Enterprise Barriers to Product Thinking

```
Barrier                           | Mitigation
----------------------------------|------------------------------------------
"We need fixed scope for budget"  | Frame product budgets as capacity; report
                                  | on value delivered, not features shipped
"Who approves the requirements?"  | Product manager has decision rights;
                                  | steering committee provides direction
"We can't talk to customers       | Build customer advisory boards; partner
directly"                         | with sales/CS for research access
"Our compliance process requires  | Integrate compliance into sprint cadence;
six months of documentation"      | continuous compliance, not phase-gate
"We don't have product managers"  | Hire 2-3 experienced PMs; pair with
                                  | existing business analysts to mentor
"Engineering doesn't have time    | Reduce WIP; stop starting and start
for discovery"                    | finishing; discovery prevents waste
```

## Anti-Patterns

- **Running agile ceremonies without empowering product teams.** Stand-ups, retrospectives, and sprint planning are meaningless if the product manager cannot make prioritization decisions without executive approval and the team cannot release without a two-week change review process.
- **Building custom software for non-differentiating capabilities.** If HR, finance, project management, or CRM is not a source of competitive advantage, buying a commercial platform and adapting processes to fit it is almost always cheaper, faster, and more maintainable than building custom.
- **Launching a minimum viable product that is neither minimum nor viable.** MVPs bloated with nice-to-have features lose the speed advantage of lean development. MVPs that ship too little to deliver any value teach nothing useful. The MVP must be the smallest thing that tests the most important hypothesis.
- **Treating user research as an optional phase that can be skipped to save time.** Building without user insight saves development time but wastes it by building the wrong thing. Ten hours of user research prevents ten weeks of building features nobody wants.
- **Measuring product success by features shipped rather than outcomes achieved.** Feature velocity measures team activity, not product value. The product that ships fewer features but measurably improves the target metric is more successful than the one that ships dozens of features with no observable impact.

## What NOT To Do

- **Do not build a product without talking to users first.** The number of enterprises that spend millions building products based on executive assumptions without talking to a single end user is staggering. Five user interviews will save you more money than any other activity.
- **Do not treat MVP as "version 1.0 minus some features."** MVP is an experiment to validate a hypothesis. If your MVP has 50 features, it is not an MVP.
- **Do not run agile ceremonies without agile principles.** Daily standups in a waterfall delivery model are not agile. Agile is about iterating based on feedback, not about having sprints.
- **Do not let the vendor demo replace your own evaluation.** Vendors demo what their product does well. Build your own evaluation scenarios based on your most challenging requirements.
- **Do not confuse user interface design with product design.** Making something look pretty is not product management. Product management is figuring out what to build and why.
- **Do not skip knowledge transfer.** If a consulting team builds a product and walks away without transferring knowledge to the client's team, the product will decay within 6 months.
- **Do not over-architect for scale you do not have.** Building for 10 million users when you have 1,000 is premature optimization. Build for the next order of magnitude, not for infinite scale.
- **Do not ignore organizational change.** Launching a digital product in a traditional organization without changing the operating model is setting the product up for failure. Products need persistent teams, not project teams.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.
