---
name: service-delivery
description: >-
  Use when the user needs service delivery in operations consulting: Define services,
  beneficiaries and ownership. Map incident request and change journeys.
---

# Service Delivery

Act as an evidence-led service delivery specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Service delivery excellence is not about following a framework religiously. It is about designing and operating services that consistently meet or exceed customer expectations at sustainable cost. The best service organizations obsess over customer effort -- how easy is it for a user to get what they need? Every unnecessary ticket, every repeated contact, every confusing self-service portal is a failure of design, not a failure of the user. Great service delivery is invisible: things just work.

## Service Design (ITIL Framework)

```
ITIL 4 SERVICE VALUE CHAIN
=============================

The ITIL 4 framework organizes service management around a
Service Value Chain with six activities:

1. PLAN
   - Portfolio management
   - Architecture management
   - Service financial management
   - Workforce and talent management
   - Continual improvement planning

2. IMPROVE
   - Measurement and reporting
   - Continual improvement register
   - Maturity assessments
   - Benchmarking

3. ENGAGE
   - Service level management
   - Relationship management
   - Service request management
   - Business analysis

4. DESIGN AND TRANSITION
   - Service design
   - Change enablement
   - Release management
   - Service validation and testing
   - Knowledge management

5. OBTAIN / BUILD
   - Software development
   - Infrastructure management
   - Supplier management

6. DELIVER AND SUPPORT
   - Incident management
   - Problem management
   - Service desk
   - Monitoring and event management

ITIL GUIDING PRINCIPLES:
  1. Focus on value
  2. Start where you are
  3. Progress iteratively with feedback
  4. Collaborate and promote visibility
  5. Think and work holistically
  6. Keep it simple and practical
  7. Optimize and automate

Note: Adopt ITIL principles and adapt practices to your
context. Do not implement ITIL as a rigid bureaucracy.
The framework should serve the organization, not vice versa.
```

## Service Catalog Management

```
SERVICE CATALOG DESIGN
========================

PURPOSE:
  A service catalog is the single authoritative source of
  information about all services available to users. It
  answers: "What can I get, how do I get it, and how long
  will it take?"

CATALOG STRUCTURE:

  Service Category (e.g., "Hardware")
    Service Offering (e.g., "Laptop Request")
      - Description
      - Eligibility (who can request)
      - Delivery time (SLA)
      - Cost (if chargeback applies)
      - Approval requirements
      - How to request (link to form/portal)

DESIGN PRINCIPLES:
  1. Write from the user's perspective (not IT's perspective)
     Bad: "Client Computing Provisioning"
     Good: "Request a New Laptop"

  2. Use plain language (no jargon or acronyms)
  3. Organize by user need, not by technical team
  4. Include expected delivery time for every service
  5. Make the top 20 services findable in 2 clicks or less
  6. Include search functionality
  7. Mobile-friendly design
  8. Regular review and update (quarterly minimum)

COMMON CATALOG CATEGORIES:
  - Hardware (laptops, monitors, peripherals)
  - Software (install, license, access)
  - Access and Accounts (new account, password reset, permissions)
  - Network and Connectivity (VPN, Wi-Fi, remote access)
  - Communication (email, phone, conferencing)
  - Workplace Services (facilities, building access, parking)
  - HR Services (benefits, payroll, leave, onboarding)
  - Finance Services (expense reports, purchase requests)

CATALOG METRICS:
  - Catalog coverage (% of requests captured in catalog)
  - Self-service adoption rate (% via portal vs phone/email)
  - Average time to find a service
  - User satisfaction with catalog experience
  - Catalog accuracy (% of entries current and correct)
```

## Service Level Agreements (SLAs)

```
SLA DESIGN FRAMEWORK
=======================

SLA HIERARCHY:

  Corporate SLA (overarching commitments):
  - General service availability targets
  - Overall response and resolution commitments
  - Escalation framework
  - Reporting and governance

  Service-Specific SLAs:
  - Defined per service or service category
  - Specific targets for that service
  - Priority-based response and resolution times

  Operational Level Agreements (OLAs):
  - Internal agreements between support teams
  - How internal groups support the SLA commitments
  - Handoff times, escalation times, support hours

  Underpinning Contracts (UCs):
  - Agreements with external vendors/partners
  - Must support internal SLA commitments
  - Include penalty clauses for non-performance

PRIORITY MATRIX:

  Priority = Impact x Urgency

  Impact:
    High = Affects many users or critical business function
    Medium = Affects a team or important function
    Low = Affects individual, workaround available

  Urgency:
    High = No workaround, business impact now
    Medium = Workaround available, impact within hours
    Low = Can wait, minimal business impact

  Priority | Response Time | Resolution Target
  ---------|---------------|------------------
  P1 (Crit)| 15 minutes    | 4 hours
  P2 (High)| 30 minutes    | 8 hours
  P3 (Med) | 2 hours       | 24 hours
  P4 (Low) | 8 hours       | 72 hours

SLA BEST PRACTICES:
  - Measure what the customer experiences (not internal metrics)
  - Include both response AND resolution targets
  - Define "business hours" vs "24x7" clearly
  - Review SLAs annually against actual performance
  - Set targets that are ambitious but achievable (not aspirational)
  - Include exclusions (planned maintenance, force majeure)
  - Report SLA performance monthly, review quarterly
```

## Incident and Problem Management

```
INCIDENT MANAGEMENT
======================

INCIDENT LIFECYCLE:
  1. Detection and Logging
     - Source: user report, monitoring alert, auto-detection
     - Log: who, what, when, where, impact
     - Classify: category, subcategory, priority

  2. Categorization and Prioritization
     - Assign priority using impact x urgency matrix
     - Route to appropriate support group
     - Set SLA clock

  3. Investigation and Diagnosis
     - Follow known error database (KEDB) for matches
     - Use knowledge base articles
     - Escalate if beyond current tier capability

  4. Resolution and Recovery
     - Apply fix or workaround
     - Verify with user that service is restored
     - Document resolution for future reference

  5. Closure
     - Confirm user satisfaction
     - Update categorization if needed
     - Close ticket
     - Trigger problem record if root cause unknown

SUPPORT TIERS:
  Tier 0: Self-service (portal, knowledge base, chatbot)
  Tier 1: Service desk (first contact, scripted resolution)
  Tier 2: Technical support (specialized knowledge)
  Tier 3: Expert/engineering (deep technical, vendor escalation)

  Target Resolution by Tier:
  Tier 0: 40-60% of all contacts (self-service deflection)
  Tier 1: 65-80% of remaining contacts (first contact resolution)
  Tier 2: 15-25%
  Tier 3: 5-10%

PROBLEM MANAGEMENT
====================

  Problem = the underlying root cause of one or more incidents

  REACTIVE Problem Management:
  - Triggered by recurring incidents or major incidents
  - Root cause analysis (RCA)
  - Known error database (KEDB) creation
  - Permanent fix implementation

  PROACTIVE Problem Management:
  - Trend analysis of incident data
  - Identify patterns before they cause major incidents
  - Infrastructure vulnerability analysis
  - Vendor advisories and patch management

  RCA FOR MAJOR INCIDENTS:
  - Conduct within 5 business days of resolution
  - Include all involved parties
  - Use structured methodology (5 Whys, timeline analysis)
  - Document: root cause, contributing factors, actions
  - Assign owners and deadlines for corrective actions
  - Track completion and verify effectiveness
  - Share learnings organization-wide (blameless postmortem)
```

## Service Desk Optimization

```
SERVICE DESK OPTIMIZATION FRAMEWORK
======================================

STAFFING MODEL:
  Erlang-C calculation for required agents:
  Inputs:
  - Call/contact volume by interval (30-min or hourly)
  - Average Handle Time (AHT)
  - Target service level (e.g., 80% answered in 30 seconds)
  - Shrinkage factor (breaks, training, meetings: typically 25-35%)

  Required Staff = Erlang-C agents / (1 - Shrinkage%)

  Scheduling principles:
  - Schedule to the demand curve (not flat staffing)
  - Use split shifts for bimodal demand patterns
  - Part-time and flexible schedules for peak coverage
  - Cross-train for multiple queues

CHANNEL OPTIMIZATION:
  Route contacts to the most efficient channel:

  Channel         | Cost/Contact | Best For
  ----------------|-----------  -|----------
  Self-service    | $0.10-0.50   | Password reset, FAQs, status check
  Chatbot         | $0.50-1.00   | Simple queries, triage, routing
  Live Chat       | $3-7         | Complex queries, multi-task agents
  Email/Ticket    | $5-10        | Non-urgent, documentation needed
  Phone           | $8-15        | Complex, emotional, urgent issues
  Walk-up         | $15-25       | Hardware, in-person required

  Strategy: Shift volume left (toward self-service)
  Target: 40-60% self-service resolution

KNOWLEDGE MANAGEMENT FOR SERVICE DESK:
  - Knowledge-Centered Service (KCS) methodology
  - Create/update articles as incidents are resolved
  - Reuse articles for similar incidents (link to tickets)
  - Measure article usage and effectiveness
  - Federate knowledge to self-service portal
  - Review and retire outdated articles
  - Target: 80%+ of common incidents have KB articles

FIRST CONTACT RESOLUTION (FCR) IMPROVEMENT:
  - Expand Tier 1 toolset (remote control, password reset, provisioning)
  - Decision trees and guided troubleshooting
  - Shift-left of common Tier 2 tasks
  - Access to knowledge base during call
  - Proper training and certification program
  - FCR target: 70-80%
```

## Customer Experience in Service Delivery

```
SERVICE EXPERIENCE DESIGN
============================

CUSTOMER EFFORT MODEL:
  The best predictor of customer loyalty in service interactions
  is not satisfaction -- it is effort. Reduce the effort required
  to get an issue resolved.

  Effort Drivers (ranked by impact):
  1. Having to contact multiple times for same issue
  2. Being transferred or having to repeat information
  3. Switching channels involuntarily
  4. Having to follow up / chase status
  5. Complex or confusing self-service
  6. Long wait times

  Customer Effort Score (CES):
  "On a scale of 1-7, how easy was it to get your issue resolved?"
  Target: 6.0+ (top quartile)

EXPERIENCE DESIGN PRINCIPLES:
  1. ANTICIPATE: predict needs before users contact you
     - Proactive monitoring and auto-remediation
     - Preemptive communication about known issues
     - Predictive alerts for expiring licenses, renewals

  2. SIMPLIFY: make every interaction effortless
     - One portal for all requests
     - Pre-populated forms using user profile data
     - Smart routing (no bouncing between teams)
     - Status visibility without needing to ask

  3. PERSONALIZE: know the user's context
     - User profile visible to agent (device, location, history)
     - Acknowledge prior contacts and history
     - Tailor communication style and channel preference

  4. EMPOWER: enable users to help themselves
     - Excellent self-service portal and knowledge base
     - Automation for common tasks (password reset, access)
     - Community forums for peer support
     - AI-powered virtual agent for guided resolution

  5. FOLLOW THROUGH: close the loop every time
     - Confirmation of resolution
     - Follow-up satisfaction survey
     - Act on feedback visibly
     - Communicate improvements made from feedback
```

## Self-Service Enablement

```
SELF-SERVICE STRATEGY
=======================

SELF-SERVICE PORTFOLIO:

  Tier 0 Components:
  1. Self-service portal (request catalog, ticket status)
  2. Knowledge base (searchable articles and guides)
  3. Virtual agent / chatbot (conversational AI)
  4. Automated workflows (password reset, access request)
  5. Community forums (peer-to-peer support)
  6. Video tutorials and walkthroughs
  7. Status page (known issues, maintenance schedule)

ADOPTION STRATEGY:
  Problem: "We built self-service but nobody uses it."

  Solution Framework:
  1. FIND IT: Users must know self-service exists
     - Prominent link on intranet homepage
     - Branded, memorable URL
     - Mention in every agent interaction
     - Include in onboarding for new employees

  2. TRUST IT: Users must believe it works
     - Ensure first experience is positive (test rigorously)
     - Show estimated completion times
     - Provide fallback to human support if stuck
     - Showcase success metrics ("98% resolved in <5 minutes")

  3. PREFER IT: Users must find it easier than calling
     - Faster than phone (no wait time)
     - Available 24/7 (not limited to business hours)
     - Visual/guided (easier to follow than verbal instructions)
     - Track record visible (my requests, my history)

  4. REINFORCE IT: Redirect non-self-service contacts
     - When users call for self-service-eligible requests,
       walk them through the portal (do not just tell them)
     - Gradually restrict phone for self-service categories
     - Gamification (recognition for self-service use)

SELF-SERVICE METRICS:
  - Self-service adoption rate (target: 40-60%)
  - Self-service resolution rate (target: 70-85%)
  - Self-service satisfaction score
  - Portal visit-to-submission conversion rate
  - Knowledge base article usefulness rating
  - Virtual agent containment rate (resolved without human)
  - Cost per self-service interaction vs assisted
```

## Service Delivery Metrics

```
SERVICE DELIVERY KPI DASHBOARD
=================================

CUSTOMER EXPERIENCE METRICS:
  - Customer Satisfaction (CSAT): post-interaction survey
    Target: 85-90% satisfied (4-5 on 5-point scale)
  - Customer Effort Score (CES): ease of resolution
    Target: 6.0+ on 7-point scale
  - Net Promoter Score (NPS): would you recommend?
    Target: +30 to +50 (internal service)

OPERATIONAL METRICS:
  - First Contact Resolution (FCR): resolved on first contact
    Target: 70-80%
  - Average Handle Time (AHT): total interaction time
    Benchmark: 8-12 minutes (phone), 6-10 minutes (chat)
    Note: optimize FCR first, AHT will follow
  - Average Speed of Answer (ASA): wait time before agent
    Target: <30 seconds for phone
  - Abandonment Rate: users who hang up/leave queue
    Target: <5%
  - Ticket Backlog: open tickets aging beyond SLA
    Target: <5% of open tickets

EFFICIENCY METRICS:
  - Cost per ticket: total service desk cost / total tickets
    Benchmark: $12-22 per ticket (blended)
  - Tickets per agent per month
    Benchmark: 400-600 (blended channels)
  - Self-service deflection rate
    Target: 40-60%
  - Automation rate (% resolved without human)
    Target: 20-35%
  - Agent utilization rate
    Target: 70-80% (above 85% = burnout risk)

SLA COMPLIANCE METRICS:
  - Response SLA met: target 95%+
  - Resolution SLA met: target 90%+
  - P1/P2 SLA met: target 95%+ (critical)
  - SLA breach trend (improving or degrading?)

KNOWLEDGE METRICS:
  - Knowledge article usage rate
  - Article reuse rate (times an article resolved a ticket)
  - Knowledge gap analysis (top unresolved categories)
  - Article quality score (user ratings)
```

## Multi-Channel Service Strategy

```
CHANNEL STRATEGY DESIGN
==========================

CHANNEL PORTFOLIO:

  Synchronous Channels (real-time):
  - Phone: complex issues, emotional/urgent, less tech-savvy users
  - Live Chat: multi-task capable, text-preferred users
  - Video: remote support, visual troubleshooting, VIP service
  - Walk-up / Tech Bar: hardware issues, in-person preference

  Asynchronous Channels (non-real-time):
  - Email: detailed requests, documentation, non-urgent
  - Web Portal: structured requests, status tracking
  - Mobile App: on-the-go, push notifications
  - Social / Messaging: internal collaboration tools (Teams, Slack)

  Self-Service Channels:
  - Knowledge Base: searchable articles
  - Virtual Agent / Chatbot: guided resolution
  - Automated Workflows: scripted task execution
  - Community Forum: peer support

CHANNEL DESIGN PRINCIPLES:
  1. Right channel for right issue (not all channels for all issues)
  2. Consistent experience across channels
  3. Seamless escalation between channels (no repeat info)
  4. Context carries between channels (omnichannel, not multi-channel)
  5. Measure and optimize each channel independently

CHANNEL MIGRATION STRATEGY:
  - Identify high-volume, simple interactions on expensive channels
  - Design and test self-service alternative
  - Promote new channel (not just "build and hope")
  - Measure adoption and satisfaction
  - Gradually adjust (do not force-migrate without quality proof)
  - Remove friction from target channel
  - Add friction to source channel (longer wait times, IVR redirect)
    only after target channel is proven effective
```

## Core Philosophy

Service delivery excellence is not about following a framework religiously — it is about designing and operating services that consistently meet or exceed user expectations at sustainable cost. The best service organizations obsess over a single metric: customer effort. How easy is it for a user to get what they need? Every unnecessary ticket, every repeated contact, every confusing self-service portal, every escalation that requires re-explaining the problem is a failure of service design, not a failure of the user. When users have to fight the service organization to get help, the system is broken regardless of how many ITIL processes are nominally in place.

The most powerful lever in service delivery is shifting resolution left — moving problem-solving closer to the user through self-service, knowledge bases, and automation. Every issue resolved through self-service at a fraction of the cost of a phone call represents a triple win: lower cost for the organization, faster resolution for the user, and freed capacity for agents to handle the complex issues that genuinely require human judgment. But shifting left only works if the self-service experience is genuinely better than calling — not just cheaper. Users who try self-service, fail, and then call are the most dissatisfied customers in any service organization, because they invested effort twice.

ITIL and other service management frameworks provide valuable structure, but they must be adopted with pragmatism. The principles — focus on value, start where you are, progress iteratively, keep it simple — are universally applicable. The specific practices should be adapted to context rather than implemented as rigid bureaucracy. An ITIL implementation that creates more process overhead than it prevents is worse than no framework at all, because it teaches the organization that service management is about compliance rather than outcomes.

## Anti-Patterns

- **AHT as Primary Metric**: Measuring and incentivizing agents primarily on Average Handle Time, which pressures them to rush interactions, skip thorough diagnosis, and transfer problems rather than solving them. Optimizing for AHT destroys First Contact Resolution, increases repeat contacts, and degrades the customer experience. Measure FCR first; AHT will naturally optimize as resolution processes improve.

- **Self-Service Without Quality**: Launching a self-service portal or knowledge base without investing in content quality, search optimization, and user experience design. A poorly designed self-service portal is worse than no portal, because it teaches users that self-service does not work and they learn to call directly, undermining the entire channel strategy.

- **SLAs Nobody Can Meet**: Setting service level targets aspirationally rather than achievably, resulting in SLAs that are breached 20-30% of the time. An SLA that is regularly breached is not a service commitment — it is a fiction that erodes trust with both users and the service team. Set targets that are ambitious but consistently achievable, and improve them incrementally.

- **Incident Without Problem Management**: Running a service desk that responds to every incident as an isolated event without ever investigating the underlying root causes that generate recurring incidents. This is the equivalent of constantly fighting fires while ignoring the arsonist. Invest in problem management to identify and eliminate the systemic causes of repeat incidents.

- **Ignoring Agent Experience**: Expecting excellent customer service from agents who are under-trained, poorly tooled, constantly monitored, and given no career development path. Burned-out agents with 30% annual turnover cannot deliver consistent service quality regardless of how well-designed the processes are. Agent experience directly drives customer experience.

## What NOT To Do

- Do not implement ITIL as a rigid, bureaucratic framework. ITIL is a set of practices to adopt and adapt, not a compliance standard to enforce. Heavy process without pragmatism alienates users and staff.
- Do not measure service desk performance primarily on Average Handle Time. Optimizing for AHT incentivizes agents to rush and transfer, which destroys FCR and customer experience. Measure FCR first.
- Do not launch a self-service portal without investing in content quality and user experience design. A bad self-service portal is worse than no portal because it teaches users that self-service does not work.
- Do not create SLAs that the organization cannot consistently meet. An SLA that is breached 30% of the time is not an SLA -- it is a fiction that destroys trust.
- Do not treat every incident as equal priority. A clear priority matrix with differentiated response is essential. When everything is priority 1, nothing is priority 1.
- Do not skip problem management. If your service desk only does incident management, you are spending all your time fighting fires you keep setting. Invest in root cause analysis.
- Do not ignore agent experience. Burned-out, under-trained, poorly-tooled agents cannot deliver good customer experience no matter how well-designed the process is.
- Do not force users into a single channel. Offer channel choice, but design incentives so the most efficient channels are also the most attractive to users.
- Do not build a knowledge base and assume it will maintain itself. Knowledge management requires dedicated resources, a governance process, and a culture of contribution. Plan for ongoing curation.
- Do not measure service delivery only through internal metrics. The ultimate measure is whether users can do their jobs effectively with the services provided. Ask them regularly and act on what you hear.
## Evidence, version and decision checks

- Establish the process boundary, demand volume, measurement baseline and constraints before claiming efficiency gains.
- Make quality, safety, capacity, labor, variability and customer-impact tradeoffs explicit.
- Pilot proposed improvements and compare before/after results; do not invent benefits or treat targets as validated forecasts.
