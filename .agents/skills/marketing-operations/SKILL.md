---
name: marketing-operations
description: >-
  Use when the user needs marketing operations in managed services: Audit campaign lifecycle,
  tooling, data and attribution. Define lead governance, consent and lifecycle stages.
---

# Marketing Operations

Act as an evidence-led marketing operations specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Marketing operations is the engine room of modern marketing. While creative strategy gets the spotlight, it is marketing operations that determines whether campaigns launch on time, leads are properly nurtured, data is clean, and the CMO can prove ROI to the board. Managed marketing operations brings the discipline of operations management to a function that has historically resisted standardization.

The critical insight for managed marketing services is that marketing is inherently creative and iterative, but the operational backbone must be systematic and reliable. You do not manage creativity — you manage the processes, platforms, and data that enable creativity to reach its audience at the right time, through the right channel, with measurable impact. The best marketing operations teams are invisible to the end customer but indispensable to the marketing team.

## Marketing Operations Scope

### Service Towers

```
MARKETING OPERATIONS SCOPE
=============================

CAMPAIGN EXECUTION
├── Campaign briefing and intake management
├── Campaign build (email, landing pages, forms, workflows)
├── Audience segmentation and list management
├── A/B testing setup and management
├── Campaign scheduling and deployment
├── Campaign monitoring and optimization
├── Post-campaign analysis and reporting
└── Campaign calendar management

CONTENT PRODUCTION
├── Content request intake and prioritization
├── Content creation (copywriting, design, video production)
├── Content localization and translation
├── Content review and approval workflow management
├── Content publishing and distribution
├── Content performance tracking
├── Digital asset management (DAM)
└── Content repurposing and lifecycle management

MARKETING AUTOMATION MANAGEMENT
├── Platform administration (Marketo, HubSpot, Pardot, SFMC)
├── Template creation and management
├── Workflow and nurture program management
├── Lead scoring model configuration and tuning
├── Integration management (CRM, CMS, analytics, CDPs)
├── Data hygiene and deduplication
├── Deliverability management (IP warming, list hygiene, compliance)
└── Platform upgrades and feature adoption

ANALYTICS AND REPORTING
├── Campaign performance reporting
├── Marketing dashboard development and maintenance
├── Attribution modeling
├── Funnel analysis and conversion tracking
├── Marketing ROI reporting
├── Competitive intelligence reporting
├── A/B test analysis and recommendations
└── Ad-hoc analysis requests

LEAD MANAGEMENT
├── Lead capture and form management
├── Lead data enrichment
├── Lead scoring and grading
├── Lead routing and assignment
├── Lead nurture program management
├── MQL to SQL handoff management
├── Lead lifecycle reporting
└── Database management and segmentation
```

### What Stays with the Client

- Marketing strategy and brand strategy
- Creative direction and brand voice definition
- Budget allocation decisions
- Agency relationship management (creative, media)
- Executive communications and thought leadership direction
- Product marketing strategy
- Pricing and packaging decisions

## MarTech Stack Management

### Platform Ecosystem

```
LAYER               | TOOLS                             | MANAGED OPS ROLE
====================+===================================+=========================
Marketing           | HubSpot, Marketo, Pardot,         | Administration, campaign
Automation          | SFMC, Adobe Campaign               | build, workflow management
CRM                 | Salesforce, HubSpot CRM,          | Integration management,
                    | Dynamics 365                       | lead sync, data hygiene
CMS                 | WordPress, Contentful, Drupal,    | Content publishing, SEO
                    | Adobe Experience Manager           | optimization, template mgmt
Analytics           | Google Analytics 4, Adobe          | Tag management, report
                    | Analytics, Mixpanel                | creation, insight delivery
CDP / DMP           | Segment, mParticle, Treasure      | Audience sync, segment
                    | Data, Tealium                      | management, data flows
SEO                 | SEMrush, Ahrefs, Moz,             | Technical SEO monitoring,
                    | Screaming Frog                     | keyword tracking, reporting
Social Management   | Sprout Social, Hootsuite,         | Publishing, monitoring,
                    | Sprinklr                           | reporting, engagement
DAM                 | Bynder, Brandfolder, Widen,       | Asset organization,
                    | Adobe Experience Manager Assets   | metadata, distribution
ABM                 | Demandbase, 6sense, Terminus      | Target account list mgmt,
                    | RollWorks                          | campaign orchestration
```

### Stack Management Responsibilities

```
MANAGED MARTECH RESPONSIBILITIES
===================================

1. ADMINISTRATION
   - User provisioning and access management
   - Platform configuration and customization
   - Feature adoption and upgrade management
   - Vendor relationship management (for platform issues)

2. INTEGRATION
   - CRM sync management (lead, contact, opportunity data)
   - Data flow monitoring and error resolution
   - API management and webhook configuration
   - Third-party connector management

3. DATA MANAGEMENT
   - Contact/lead database hygiene (dedup, merge, standardize)
   - Data enrichment workflows
   - Bounce and unsubscribe management
   - GDPR/CCPA consent and preference management
   - Database segmentation and list management

4. PERFORMANCE
   - Platform performance monitoring
   - Email deliverability management (domain reputation, authentication)
   - Processing queue monitoring
   - Storage and API limit management
```

## Marketing Automation Operations

### Campaign Build Process

```
CAMPAIGN BUILD WORKFLOW
========================

1. BRIEF SUBMISSION (Client / Marketing Team)
   - Campaign objective and KPIs
   - Target audience definition
   - Creative assets and copy (or request for production)
   - Channel mix and schedule
   - Budget and tracking requirements

2. INTAKE AND PLANNING (Marketing Ops)
   - Brief review and feasibility assessment
   - Timeline confirmation (standard SLA: 5-10 business days)
   - Resource assignment
   - Technical requirements identification

3. BUILD (Marketing Ops)
   - Email template build and render testing
   - Landing page creation
   - Form creation with field mapping
   - Workflow / automation setup
   - UTM tagging and tracking configuration
   - Audience list pull and validation
   - A/B test configuration

4. QA AND TESTING (Marketing Ops + Client)
   - Functional testing (links, forms, workflows, tracking)
   - Rendering testing (email clients, browsers, devices)
   - Data flow testing (leads route correctly, CRM sync works)
   - Copy and brand compliance review
   - Stakeholder approval

5. DEPLOYMENT (Marketing Ops)
   - Schedule confirmation
   - Final list validation (suppression, exclusion)
   - Deployment execution
   - Send monitoring (bounce rate, delivery rate)

6. POST-CAMPAIGN (Marketing Ops)
   - Performance report (within 48 hours for email, 7-14 days for full funnel)
   - A/B test results analysis
   - Recommendations for optimization
   - Asset archival
```

### Email Operations Best Practices

```
EMAIL OPERATIONS STANDARDS
============================

DELIVERABILITY:
- Maintain sender reputation score > 90
- Authenticate all sending domains (SPF, DKIM, DMARC)
- Warm new IPs gradually (start 500/day, increase 2x every 48 hours)
- Monitor blacklists daily (MXToolbox, Spamhaus)
- Maintain bounce rate < 2% (hard bounces)
- Maintain spam complaint rate < 0.1%
- Clean lists quarterly: remove 6-month non-engagers from active sends

LIST HYGIENE:
- Remove hard bounces immediately
- Suppress role-based addresses (info@, sales@, admin@)
- Deduplicate weekly
- Validate new records with email verification service
- Maintain explicit opt-in records with timestamp

TESTING STANDARDS:
- Render test in top 10 email clients (Litmus or Email on Acid)
- Test all links (including tracking redirects)
- Test personalization tokens with edge cases (empty fields, special characters)
- Test in dark mode
- Mobile-first design (60%+ of opens are mobile)
```

## Content Production at Scale

### Content Operations Model

```
CONTENT PRODUCTION WORKFLOW
=============================

1. REQUEST INTAKE
   - Standardized brief template (objective, audience, format, deadline)
   - Prioritization framework (revenue impact, deadline, effort)
   - Capacity check against production calendar

2. ASSIGNMENT AND PLANNING
   - Writer/designer assignment based on skill and availability
   - Research and reference material gathering
   - SEO keyword integration (if applicable)
   - Deadline confirmation with milestones

3. PRODUCTION
   - First draft creation
   - Internal editorial review (grammar, style, accuracy)
   - Design/visual element creation
   - SEO optimization
   - Accessibility compliance (alt text, contrast, structure)

4. REVIEW AND APPROVAL
   - Client/stakeholder review (limit to 2 review cycles in SLA)
   - Legal/compliance review (if required)
   - Brand compliance check
   - Final approval sign-off

5. PUBLISHING AND DISTRIBUTION
   - CMS publishing with metadata and tagging
   - Social media distribution scheduling
   - Email integration (newsletter inclusion, nurture sequence)
   - DAM upload with proper metadata

6. PERFORMANCE TRACKING
   - Traffic and engagement metrics (30, 60, 90 day reviews)
   - Conversion tracking
   - Content refresh recommendations
```

### Content Types and SLAs

```
CONTENT TYPE         | TYPICAL SLA      | NOTES
=====================+==================+============================
Blog post (800-1200) | 5-7 business days | Including 1 revision cycle
Email copy           | 3-5 business days | Template + copy
Landing page         | 5-7 business days | Copy + design + build
Social media posts   | 2-3 business days | Batch of 5-10 posts
Whitepaper / eBook   | 15-20 business days| Research + writing + design
Case study           | 10-15 business days| Including client interviews
Infographic          | 7-10 business days | Data + design
Video (short-form)   | 10-15 business days| Script + production + edit
Webinar support      | 10-15 business days| Deck + landing page + emails
Localization         | 5-7 business days  | Per language, after English final
```

## Marketing Performance Reporting

### Reporting Framework

```
REPORTING CADENCE AND CONTENT
===============================

WEEKLY FLASH REPORT
- Active campaign performance (send/open/click/conversion)
- Pipeline contribution (MQLs, SQLs, opportunities influenced)
- Anomaly alerts (deliverability drops, traffic spikes, conversion drops)
- Upcoming campaign calendar

MONTHLY PERFORMANCE REPORT
- Full funnel metrics (awareness → engagement → conversion → revenue)
- Channel performance comparison
- Content performance (top/bottom performers)
- Database health metrics (growth, decay, engagement rates)
- Budget utilization vs. plan
- Lead scoring and routing accuracy
- SLA compliance report

QUARTERLY BUSINESS REVIEW
- Marketing ROI analysis and attribution
- Year-over-year trend analysis
- MarTech utilization and optimization recommendations
- Competitive benchmarking
- Strategic recommendations for next quarter
- Improvement initiative progress and results
```

### Attribution Models

```
MODEL                | APPROACH                        | BEST FOR
=====================+=================================+=========================
First Touch          | 100% credit to first interaction| Understanding awareness
Last Touch           | 100% credit to last interaction | Understanding conversion
Linear               | Equal credit across all touches | Simple multi-touch view
Time Decay           | More credit to recent touches   | Short sales cycles
W-Shaped             | 40/20/40 (first/lead creation/  | B2B with clear stages
                     | opportunity creation)           |
Custom / Data-Driven | ML model based on actual data   | Mature organizations
                     |                                 | with sufficient data
```

## Brand Compliance

### Brand Governance in Managed Model

```
BRAND COMPLIANCE FRAMEWORK
=============================

1. BRAND GUIDELINES REPOSITORY
   - Centralized, version-controlled brand guidelines
   - Logo usage, color palette, typography, imagery style
   - Tone of voice guidelines with examples
   - Co-branding and partner guidelines
   - Accessible to all production team members

2. TEMPLATE MANAGEMENT
   - Pre-approved email templates (layout, design)
   - Pre-approved landing page templates
   - Social media templates
   - Presentation templates
   - All templates locked to prevent unauthorized modification

3. REVIEW CHECKPOINTS
   - Automated brand compliance checks (colors, logos, fonts)
   - Human review for tone, messaging, and creative judgment
   - Legal review triggers (claims, testimonials, regulated content)
   - Approval matrix by content type and distribution channel

4. COMPLIANCE METRICS
   - Brand compliance audit score: > 95% pass rate
   - Non-compliant content incidents per month: < 2
   - Time to remediate brand violations: < 4 hours
```

## Marketing Ops Metrics

```
CATEGORY         | METRIC                          | TARGET
=================+=================================+======================
Operational      | Campaign SLA compliance          | > 95%
                 | Content SLA compliance           | > 90%
                 | Campaign error rate              | < 1%
                 | QA catch rate (pre-deployment)   | > 99%
Database         | Database growth rate              | 3-5% monthly (net)
                 | Email deliverability rate         | > 97%
                 | Unsubscribe rate                  | < 0.5% per send
                 | Data completeness (key fields)    | > 85%
Performance      | Email open rate                   | > 20% (B2B)
                 | Email click-through rate          | > 2.5% (B2B)
                 | Landing page conversion rate      | > 15%
                 | MQL volume vs. target             | +/- 10% of plan
Efficiency       | Cost per MQL                      | Declining QoQ
                 | Time to launch campaign           | Within SLA
                 | Platform utilization rate          | > 70% of licensed features
                 | Automation coverage               | > 60% of campaigns
```

## SLA Design for Marketing Services

### SLA Structure

```
SLA FRAMEWORK FOR MANAGED MARKETING OPS
==========================================

TIER 1 — URGENT (1-2 business day turnaround)
- Email content correction (typo, broken link, wrong pricing)
- Campaign pause/resume
- Emergency landing page update
- Data export for executive request

TIER 2 — STANDARD (3-5 business days)
- Single email campaign build and deployment
- Social media post batch creation
- Standard report generation
- Form or landing page creation

TIER 3 — COMPLEX (5-10 business days)
- Multi-touch campaign build (email + landing page + form + workflow)
- New nurture program setup
- Custom report or dashboard creation
- Template design and build

TIER 4 — PROJECT (10-20+ business days)
- Marketing automation migration
- New platform integration
- Major website content update
- Database restructuring or cleanup project

MEASUREMENT:
- SLA compliance target: > 95% on-time delivery
- Quality gate: Delivered on time AND right first time (no rework)
- Escalation: Any SLA miss must be root-caused within 48 hours
```

## What NOT To Do

- **Do not treat marketing ops as just "button pushing."** Campaign execution requires strategic thinking about audience, timing, messaging, and measurement. Hire and develop people who understand marketing, not just the tools.
- **Do not skip QA to meet a deadline.** A broken link in an email to 500,000 subscribers or a wrong price on a landing page creates brand damage that no amount of correction emails can undo. QA is non-negotiable.
- **Do not allow ungoverned MarTech sprawl.** The average enterprise has 90+ marketing tools. Every ungoverned tool is a data silo, security risk, and budget leak. Maintain a MarTech registry and justify every tool quarterly.
- **Do not neglect data privacy.** GDPR, CCPA, CAN-SPAM, CASL — every marketing communication is a compliance event. Consent management, preference centers, and opt-out processing must be bulletproof. Fines are real and large.
- **Do not build campaigns without tracking.** If you cannot measure it, you cannot improve it and you cannot prove value. UTM tagging, conversion tracking, and attribution must be standard on every campaign.
- **Do not ignore deliverability.** Email is still the highest-ROI marketing channel. If your emails land in spam, nothing else matters. Monitor sender reputation, authenticate domains, and manage lists rigorously.
- **Do not create content without a distribution plan.** Content without distribution is a cost center. Every piece of content should have a defined distribution plan across channels before production begins.
- **Do not confuse volume with value.** Sending more emails, publishing more blog posts, or generating more MQLs is not inherently valuable. Measure quality (engagement, conversion, pipeline contribution) alongside volume.
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

- **Domain control (Enterprise advisory):** State decision owner, scope, constraints, dependencies and evidence sources.
- **Independent validation:** Do not represent illustrative frameworks as binding standards or guarantees.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
