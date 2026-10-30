---
name: security-operations-managed
description: >-
  Use when the user needs security operations managed in managed services: Inventory protected
  assets, telemetry and response scope. Define detection coverage, alert severity and handoffs.
---

# Security Operations Managed

Act as an evidence-led security operations managed specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Managed security operations is not about technology — it is about outcomes. Clients do not buy a SIEM; they buy the ability to detect and respond to threats before they become breaches. The best managed security services combine deep threat expertise, battle-tested processes, and purpose-built technology into a service that is measurably better than what most organizations can build internally.

The fundamental challenge in managed security is signal-to-noise ratio. The average enterprise generates billions of log events per day. The managed SOC's job is to reduce those billions to the handful that matter, investigate them rapidly, and take decisive action. Alert fatigue kills SOC analysts, and it kills security programs. Every detection rule, every playbook, every automation must be designed to maximize signal and eliminate noise.

## Managed SOC Models

### Model Comparison

```
MODEL                | DESCRIPTION                      | BEST FOR
=====================+==================================+=========================
Dedicated SOC        | Full SOC team exclusively for     | Large enterprises, highly
                     | one client. Client-specific       | regulated industries,
                     | tools, processes, threat model.   | complex environments.
                     | Premium pricing.                  | $2M+ annual investment.

Shared SOC           | Multi-tenant SOC serving          | Mid-market, cost-
                     | multiple clients. Standardized    | conscious enterprises.
                     | platform, shared analysts with    | Effective if provider
                     | client-specific playbooks.        | has strong platform.

Hybrid SOC           | Client retains some security      | Organizations with
                     | functions in-house (e.g., IR,     | existing security teams
                     | threat hunting), outsources       | needing augmentation.
                     | 24/7 monitoring and L1/L2         | Most common model.
                     | triage.                           |

Co-Managed SOC       | Provider and client share the     | Mature security orgs
                     | same platform and workflows.      | wanting to extend hours
                     | Joint responsibility, shared      | or fill skill gaps
                     | visibility.                       | without losing control.
```

### MSSP vs MDR

```
DIMENSION            | MSSP                             | MDR
=====================+==================================+=========================
Focus                | Monitoring, alerting,            | Detection, investigation,
                     | device management                | response, threat hunting
Response             | Alert forwarding,                | Active response (contain,
                     | recommendations                  | isolate, remediate)
Depth                | Broad coverage, less             | Deep investigation,
                     | investigation depth              | forensic analysis
Technology           | Client's tools or shared         | Provider's purpose-built
                     | SIEM                             | platform (usually XDR)
Staffing             | L1/L2 analysts                   | L2/L3 analysts, threat
                     |                                  | hunters, IR specialists
Typical Client       | Need 24/7 eyes on glass,         | Need threat detection
                     | compliance-driven                | and response capability
Price Point          | $$                               | $$$
```

## Security Monitoring and Alerting

### Detection Engineering

Detection engineering is the core intellectual property of a managed security service. The quality of your detections determines the quality of your service.

```
DETECTION HIERARCHY (PRIORITIZE TOP-DOWN)
==========================================

1. KNOWN-BAD INDICATORS (IOCs)
   - Known malicious IPs, domains, file hashes
   - Threat intelligence feeds
   - Low false positive, but easily evaded

2. BEHAVIORAL DETECTIONS
   - Abnormal authentication patterns
   - Lateral movement indicators
   - Data exfiltration patterns
   - Privilege escalation sequences
   - Higher value, requires tuning

3. ANOMALY DETECTION
   - Baseline deviation (unusual process, unusual time, unusual volume)
   - Machine learning-driven
   - Highest noise, requires continuous tuning

4. THREAT HUNT HYPOTHESES
   - Proactive searches based on threat intelligence
   - Not automated — analyst-driven
   - Discovers what detections miss
```

### Alert Triage Framework

```
ALERT TRIAGE PROCESS
=====================

1. INGEST         → Alert fires from SIEM/XDR/EDR
2. ENRICH         → Automatic enrichment (threat intel, asset context, user context, CMDB)
3. CORRELATE      → Link related alerts into incidents (SOAR or analyst)
4. CLASSIFY       → True positive, false positive, benign true positive
5. PRIORITIZE     → Critical, High, Medium, Low (based on asset value and threat severity)
6. INVESTIGATE    → Root cause analysis, scope assessment, impact determination
7. RESPOND        → Contain, eradicate, recover (per playbook or analyst judgment)
8. DOCUMENT       → Full investigation notes, timeline, actions taken
9. NOTIFY         → Client notification per SLA (critical: 15 min, high: 1 hour)
10. CLOSE/LEARN   → Close incident, update detections, refine playbooks

TARGET METRICS:
- Alert-to-triage: < 5 minutes for critical alerts
- Triage-to-investigation: < 15 minutes for critical
- Mean time to detect (MTTD): < 1 hour
- Mean time to respond (MTTR): < 4 hours
```

## Incident Response in Managed Model

### IR Operating Model

```
INCIDENT RESPONSE RESPONSIBILITIES
====================================

MANAGED SOC TEAM                      CLIENT TEAM
----------------                      -----------
Detection and initial triage          Business impact assessment
Investigation and scoping             Business decision-making
Containment recommendations           Containment approval (if required)
Containment execution (if authorized) Legal and regulatory notification
Evidence collection and preservation  External communications
Root cause analysis                   Insurance claim coordination
Remediation recommendations           Remediation execution (or approval)
Post-incident report                  Executive briefing
Detection improvement                 Policy/architecture changes

CRITICAL: Define authorization boundaries BEFORE an incident.
- Can the SOC isolate an endpoint without client approval? (Should be yes)
- Can the SOC block a user account? (Depends on client preference)
- Can the SOC block network segments? (Usually requires approval)
- Who declares a major incident? (Define criteria, not just authority)
```

### Incident Severity Classification

```
SEVERITY  | CRITERIA                              | RESPONSE SLA
==========+=======================================+=====================
SEV 1     | Active breach, ransomware execution,  | 15 min notification
Critical  | data exfiltration in progress,        | Immediate containment
          | critical infrastructure compromise    | War room activated
SEV 2     | Confirmed compromise, malware         | 30 min notification
High      | execution, compromised credentials,   | 1 hour containment
          | insider threat indicators             | Senior analyst assigned
SEV 3     | Suspicious activity requiring         | 4 hour notification
Medium    | investigation, policy violations,     | 8 hour investigation
          | vulnerability exploitation attempt    |
SEV 4     | Informational, unsuccessful attacks,  | 24 hour notification
Low       | minor policy violations, false        | Best effort
          | positives requiring tuning            |
```

## Threat Intelligence

### Threat Intel Integration

```
INTELLIGENCE TYPE     | SOURCE                          | APPLICATION
======================+=================================+=====================
Strategic             | Industry reports, government     | Client risk briefings,
                      | advisories, geopolitical         | architecture decisions
                      | analysis                        |
Tactical              | Adversary TTPs, MITRE ATT&CK    | Detection engineering,
                      | mappings, campaign analysis      | threat hunting hypotheses
Operational           | Threat intel feeds, ISACs,       | IOC matching, alert
                      | dark web monitoring              | enrichment, blocking
Technical             | Malware analysis, IOCs,          | SIEM rules, firewall
                      | YARA rules, Sigma rules          | rules, EDR policies
```

### Threat Briefing Cadence

- **Daily**: Automated IOC ingestion and detection updates
- **Weekly**: Threat landscape summary relevant to client's industry and geography
- **Monthly**: Detailed threat briefing with TTPs, campaigns, and recommended actions
- **Ad-hoc**: Urgent advisories for critical vulnerabilities or active campaigns targeting client's sector

## Vulnerability Management as a Service

### VM Operating Model

```
VULNERABILITY MANAGEMENT LIFECYCLE
====================================

1. DISCOVERY      → Continuous asset discovery (network, cloud, containers)
2. SCAN           → Authenticated scanning on defined schedule
3. ANALYZE        → Prioritize by exploitability, asset criticality, threat context
4. REPORT         → Severity-based reporting with remediation guidance
5. REMEDIATE      → Track remediation, coordinate with IT teams
6. VALIDATE       → Re-scan to confirm remediation
7. REPORT OUT     → Trend analysis, risk posture dashboards, executive reporting

SCANNING CADENCE:
- External perimeter: Weekly
- Internal network: Monthly
- Cloud workloads: Continuous (agent-based)
- Web applications: Monthly (DAST), continuous (SAST in CI/CD)
- Container images: At build and on schedule

PRIORITIZATION (NOT JUST CVSS):
- CVSS score + known exploit + threat intelligence + asset criticality + exposure
- Use EPSS (Exploit Prediction Scoring System) alongside CVSS
- Focus on the 5% of vulns that represent 95% of actual risk
```

## SOC Metrics and SLAs

```
CATEGORY         | METRIC                          | TARGET
=================+=================================+======================
Detection        | Mean time to detect (MTTD)      | < 1 hour
                 | Detection coverage (ATT&CK)     | > 80% of techniques
                 | False positive rate              | < 30% of total alerts
Response         | Mean time to respond (MTTR)      | < 4 hours (SEV 1: <1hr)
                 | Mean time to contain             | < 2 hours (SEV 1)
                 | Incident notification SLA        | 100% compliance
Operational      | Alert triage time                | < 15 minutes (avg)
                 | Analyst utilization              | 60-75%
                 | Playbook coverage                | > 90% of alert types
                 | Escalation accuracy              | > 95% (valid escalations)
Quality          | Incident report quality score    | > 90% (peer review)
                 | Client satisfaction (CSAT)       | > 4.0 / 5.0
                 | Missed true positives            | < 1% (continuous audit)
Availability     | SOC availability                 | 99.9% (24/7)
                 | Platform uptime                  | 99.95%
```

## 24/7 Operations Staffing

### Shift Model

```
24/7 SOC STAFFING MODEL
=========================

FOLLOW-THE-SUN (PREFERRED FOR COST)
- Americas shift (8am-4pm EST): Onshore analysts + senior analysts
- EMEA shift (8am-4pm GMT): Nearshore/offshore analysts
- APAC shift (8am-4pm SGT): Offshore analysts
- Overlap hours for shift handoff (30-60 min)
- Senior escalation available in all time zones

DEDICATED SHIFT (WHEN CLIENT REQUIRES)
- Day shift: 7am-3pm (strongest team)
- Swing shift: 3pm-11pm
- Night shift: 11pm-7am (hardest to staff, highest attrition)
- Weekend rotation

MINIMUM VIABLE SOC:
- 2 analysts per shift (never single-analyst coverage)
- 1 senior analyst / shift lead available
- 1 incident response resource on-call
- 1 threat hunter (day shift only, dedicated)
- Total: 12-16 analysts for 24/7 coverage (accounting for PTO, sick, attrition)
```

### Analyst Retention

SOC analyst burnout and attrition are existential threats to service quality:
- **Rotate assignments**: Alert triage, threat hunting, detection engineering, client briefings
- **Career progression**: Clear path from L1 to L2 to L3 to specialized roles
- **Training budget**: SANS, GIAC, CrowdStrike, Splunk certifications. Budget $5-8K per analyst per year.
- **Automation**: Automate the boring, repetitive triage. Analysts should investigate, not click buttons.
- **Target attrition**: < 15% annually. Industry average is 20-30%.

## Client Reporting

### Report Types

```
REPORT           | FREQUENCY    | AUDIENCE              | CONTENT
=================+==============+=======================+========================
Executive Brief  | Monthly      | CISO, CTO, Board      | Risk posture, key
                 |              |                        | incidents, trends,
                 |              |                        | recommendations
Operational      | Weekly       | Security team,         | Alert volumes, incidents,
Review           |              | IT leadership          | SLA performance, tuning
Incident Report  | Per incident | Security team,         | Timeline, root cause,
                 |              | legal (if needed)      | impact, remediation
Threat Brief     | Monthly      | Security team, CISO    | Threat landscape, IOCs,
                 |              |                        | recommended actions
Compliance       | Monthly/     | Compliance, audit      | Control effectiveness,
Dashboard        | Quarterly    |                        | coverage gaps, findings
```

## What NOT To Do

- **Do not deploy a SIEM and call it a SOC.** Technology without trained analysts, tuned detections, and tested playbooks is an expensive log aggregator. The SIEM is 20% of a SOC; the people and processes are 80%.
- **Do not alert on everything.** Every alert that fires must have a defined response action. If the response to an alert is "ignore it," delete the detection rule. Alert fatigue kills analysts and hides real threats.
- **Do not skip playbook testing.** Untested playbooks fail during real incidents. Run tabletop exercises quarterly and live fire exercises annually.
- **Do not neglect log source coverage.** A SOC that only ingests firewall and endpoint logs is blind to cloud, identity, application, and email threats. Map log sources to MITRE ATT&CK and identify coverage gaps.
- **Do not treat vulnerability management as scan-and-report.** If you scan, report, and hope someone fixes it, you are providing a compliance artifact, not a security service. Track remediation, escalate, and measure risk reduction.
- **Do not assume the client understands what you do.** Regular reporting, clear communication during incidents, and proactive threat briefings build trust. Silence from the SOC does not mean "everything is fine" to the client — it means "I wonder what I am paying for."
- **Do not commingle client environments.** In a multi-tenant SOC, data isolation is absolute. One client's logs, alerts, and incident data must never be visible to another client. This is a career-ending and potentially legal violation.
- **Do not understaff night shifts.** Single-analyst coverage at 3am is a single point of failure. The attacker knows your staffing model. Two analysts minimum, always.
## Anti-Patterns

**Over-engineering for hypothetical scale.** Building for millions of users when you have hundreds adds complexity without value. Solve today's problems first.

**Ignoring the existing ecosystem.** Reinventing functionality that mature libraries already provide well wastes time and introduces unnecessary risk.

**Premature abstraction.** Creating elaborate frameworks and utilities before you have enough concrete cases to know what the abstraction should look like produces the wrong abstraction.

**Neglecting error handling at boundaries.** Validate trust boundaries and do not blindly trust internal inputs; external inputs, APIs, file I/O and cross-service interfaces require explicit validation.

**Skipping documentation for obvious code.** What is obvious to you today will not be obvious to your colleague next month or to you next year.
## Evidence, version and decision checks

- Define service scope, exclusions, service hours, priority definitions, contractual SLAs and ownership before committing to targets.
- Treat industry staffing ratios, SLA percentages and cost targets as examples requiring baseline measurement.
- Include handoffs, escalation, measurement sources, incident recovery and continuity plans in operational recommendations.
