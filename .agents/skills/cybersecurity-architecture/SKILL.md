---
name: cybersecurity-architecture
description: >-
  Use when the user needs cybersecurity architecture in enterprise technology: Identify
  business-critical assets, threats and trust boundaries. Assess current controls against an
  appropriate framework.
---

# Cybersecurity Architecture

Act as an evidence-led cybersecurity architecture specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

Enterprise cybersecurity is fundamentally a risk management discipline, not a technology discipline. The CISO who buys the most tools does not have the best security program; the CISO who understands the business, quantifies risk, and makes defensible investment decisions does. Security architecture must be designed around the organization's specific risk profile, threat landscape, and operational requirements, not around the latest vendor marketing.

The basics matter more than advanced capabilities, and the basics are where most organizations fail. Before investing in sophisticated detection platforms, the question must be: Is multi-factor authentication enforced on every privileged account? Do we have a complete asset inventory? Can we detect and respond to known attack patterns? Organizations that deploy advanced security tools without mastering foundational controls are building on sand.

Security architecture in the modern enterprise must assume breach. The perimeter is gone, the workforce is distributed, and applications run everywhere from public cloud to employee laptops. Zero trust architecture, which verifies every access request regardless of network location, is not a product to purchase but an architectural principle to implement systematically across identity, network, application, and data layers.

## Philosophy

Cybersecurity in the enterprise context is fundamentally a risk management discipline, not a technology discipline. The CISO who buys the most tools does not have the best security program. The CISO who understands the business, quantifies risk, and makes defensible investment decisions does.

Expensive tooling does not compensate for missing security fundamentals such as MFA, patch management, reliable asset inventory and detection processes. The basics matter more than the advanced capabilities. Before you buy an XDR platform, ask yourself: do we have MFA on every admin account? Do we know what assets we have? Can we detect a brute force attack? If the answer to any of these is no, you are not ready for advanced security.

The other critical insight is that security is not a destination. It is a continuous program. The threat landscape evolves daily. Your security program must evolve with it. A security assessment that is 18 months old is already outdated. Build for continuous improvement, not for a point-in-time compliance checkbox.

## Security Architecture Frameworks

### NIST Cybersecurity Framework (CSF 2.0)

```
Function       | Description                          | Key Categories
---------------|--------------------------------------|-----------------------------
GOVERN (new)   | Organizational context, risk         | Risk management strategy,
               | strategy, supply chain               | roles and responsibilities,
               |                                      | policy, oversight
IDENTIFY       | Asset management, risk assessment,   | Asset management, risk
               | business environment                 | assessment, supply chain
               |                                      | risk management
PROTECT        | Access control, training, data       | Identity management, data
               | security, maintenance                | security, platform security,
               |                                      | technology infrastructure
DETECT         | Anomalies, events, continuous        | Continuous monitoring,
               | monitoring                           | adverse event analysis
RESPOND        | Response planning, communications,   | Incident management,
               | analysis, mitigation                 | analysis, reporting
RECOVER        | Recovery planning, improvements,     | Incident recovery plan
               | communications                       | execution, communication

Using NIST CSF in Practice:
  1. Assess current maturity across all functions (1-5 scale)
  2. Define target maturity (aligned to risk appetite)
  3. Identify gaps and prioritize investments
  4. Build roadmap to close gaps
  5. Measure progress annually

Key Principle: NIST CSF is a framework, not a checklist.
Adapt it to your organization's context, risk appetite, and industry.
```

### ISO 27001 vs NIST CSF vs CIS Controls

```
Framework       | Best For                            | Approach
----------------|-------------------------------------|---------------------------
NIST CSF 2.0    | Security strategy and program       | Risk-based, flexible,
                | design; board-level communication   | outcome-oriented
ISO 27001       | Formal ISMS certification;          | Control-based, auditable,
                | international organizations         | certification-oriented
CIS Controls    | Tactical implementation guidance;   | Prescriptive, prioritized,
                | starting from scratch               | actionable controls
NIST 800-53     | Government and regulated            | Comprehensive control
                | industries; FedRAMP                 | catalog; very detailed
SOC 2           | SaaS/service providers;             | Trust service criteria;
                | customer assurance                  | audit-focused

My Recommendation:
  - Use NIST CSF for strategy and communication (board, executives)
  - Use CIS Controls for tactical implementation (security engineering)
  - Use ISO 27001 if you need formal certification (contractual requirement)
  - Use NIST 800-53 if you are in government or need FedRAMP
  - They are complementary, not competing
```

## Security Program Maturity Assessment

### Maturity Model

```
Level 1: Initial (Ad Hoc)
  - No formal security program
  - Reactive: respond to incidents as they happen
  - No dedicated security team
  - Basic antivirus and firewall only
  - Common in: small companies, startups

Level 2: Developing (Basic)
  - CISO or security manager appointed
  - Basic policies and standards documented
  - Vulnerability scanning implemented
  - Incident response plan exists (untested)
  - Common in: mid-market companies beginning security journey

Level 3: Defined (Intermediate)
  - Formal security program with governance
  - Security architecture documented
  - SIEM deployed and monitored
  - Regular penetration testing
  - Security awareness training program
  - Common in: mature mid-market, growing enterprises

Level 4: Managed (Advanced)
  - Risk-based security investment decisions
  - SOC with 24/7 monitoring
  - Threat intelligence integration
  - Security metrics reported to board
  - Regular tabletop exercises
  - Common in: large enterprises, regulated industries

Level 5: Optimizing (Leading)
  - Continuous improvement driven by metrics
  - Advanced threat hunting
  - Automated response and orchestration
  - Security embedded in DevOps (DevSecOps)
  - Quantitative risk management (FAIR methodology)
  - Common in: financial services leaders, large tech companies

Assessment Approach:
  Evaluate across 12-15 domains (identity, network, endpoint, data,
  application, cloud, incident response, governance, etc.)
  Score each domain 1-5
  Identify gaps between current and target maturity
  Prioritize investments based on risk reduction value
```

## Security by Design

### Secure Architecture Principles

```
Principle                    | Implementation
-----------------------------|--------------------------------------------
Least Privilege              | Grant minimum access required for function;
                             | review quarterly; automate access revocation
Defense in Depth             | Multiple layers of controls; no single point
                             | of failure in security architecture
Zero Trust                   | Never trust, always verify; authenticate and
                             | authorize every request regardless of source
Secure by Default            | Systems ship with security enabled; require
                             | explicit action to reduce security
Fail Secure                  | When controls fail, default to deny rather
                             | than allow; fail closed, not open
Separation of Duties         | No single person can complete a critical
                             | action alone; require multiple approvals
Audit Everything             | Log all security-relevant events; retain for
                             | investigation and compliance; immutable logs
Minimize Attack Surface      | Disable unnecessary services, close unused
                             | ports, remove unused accounts; less is more
```

## Identity and Access Management Architecture

### IAM Architecture Components

```
Component                | Purpose                        | Enterprise Tools
-------------------------|--------------------------------|-------------------
Identity Governance (IGA)| Lifecycle, access reviews,     | SailPoint, Saviynt,
                         | certification, segregation     | One Identity
                         | of duties                      |
Access Management (AM)   | Authentication, SSO, MFA,      | Okta, Azure AD/Entra
                         | federation                     | ID, Ping Identity
Privileged Access (PAM)  | Admin accounts, vault, session | CyberArk, Delinea,
                         | recording, just-in-time access | BeyondTrust
Customer Identity (CIAM) | Customer authentication, self- | Okta CIC, Azure
                         | service, consent management    | AD B2C, ForgeRock
Directory Services       | Identity store, attributes,    | Azure AD/Entra ID,
                         | groups                         | Active Directory
```

### IAM Strategy Priorities

```
Priority 1 (Immediate — do these first):
  - MFA on all accounts (especially admin and remote access)
  - Privileged access management (vault all admin credentials)
  - SSO for all SaaS applications
  - Automated provisioning/deprovisioning (joiner-mover-leaver)

Priority 2 (Within 6 months):
  - Access certification (quarterly review of all access)
  - Role-based access control (RBAC) with role mining
  - Conditional access policies (location, device, risk-based)
  - Service account governance

Priority 3 (Within 12 months):
  - Identity governance platform implementation
  - Segregation of duties enforcement
  - Passwordless authentication (FIDO2, passkeys)
  - Zero trust identity integration

IAM Metrics:
  - % of applications behind SSO (target: 95%+)
  - % of users with MFA enabled (target: 100%)
  - Mean time to provision/deprovision (target: < 24 hours)
  - Access certification completion rate (target: 100%)
  - Orphaned accounts (target: 0)
```

## Network Security Architecture

### Zero Trust Architecture

```
Zero Trust Principles:
  1. Verify explicitly: Authenticate and authorize based on all
     available data points (identity, location, device, service)
  2. Use least privilege: Limit access with JIT/JEA, risk-based
     adaptive policies, and data protection
  3. Assume breach: Minimize blast radius, segment access, verify
     end-to-end encryption, use analytics for detection

Zero Trust Components:
  - Identity: Strong authentication (MFA/passwordless), continuous
    verification, conditional access
  - Devices: Device health attestation, compliance checking,
    endpoint detection and response
  - Network: Microsegmentation, software-defined perimeter,
    encrypted communications
  - Applications: Secure access service edge (SASE), app-level
    authentication, API security
  - Data: Classification, encryption, DLP, rights management
  - Visibility: SIEM/XDR, analytics, automated threat detection

Implementation Roadmap:
  Phase 1 (0-6 months):   Identity foundation (MFA, SSO, conditional access)
  Phase 2 (6-12 months):  Device trust (MDM, EDR, compliance checking)
  Phase 3 (12-18 months): Network segmentation (microsegmentation, SASE)
  Phase 4 (18-24 months): Application and data protection (CASB, DLP)
  Phase 5 (Ongoing):      Continuous monitoring and adaptive policies
```

### Network Segmentation

```
Segmentation Approach:
  Traditional (VLAN-based):
    - Coarse-grained, network-level
    - Adequate for basic segmentation
    - Difficult to maintain at scale

  Microsegmentation:
    - Fine-grained, workload-level
    - Policy-based, identity-aware
    - Tools: Illumio, Guardicore (Akamai), VMware NSX, Zscaler

  Software-Defined Perimeter (SDP/ZTNA):
    - Application-level access control
    - Replace VPN with direct application access
    - Tools: Zscaler Private Access, Palo Alto Prisma Access,
      Cloudflare Access

Priority Segmentation Targets:
  1. Separate OT/ICS from IT networks
  2. Isolate PCI (cardholder data environment) from corporate
  3. Segment critical infrastructure (DC, Active Directory)
  4. Microsegment between application tiers
  5. Isolate development from production environments
```

## Security Operations Center (SOC) Design

### SOC Model Options

```
Model              | Description                     | Best For
-------------------|---------------------------------|---------------------------
In-House SOC       | Fully staffed, owned, operated  | Large enterprises (5000+
                   | internally; 24/7 requires 10+   | employees), regulated
                   | analysts minimum                | industries, high maturity
Managed SOC (MSSP) | Outsourced to managed security  | Mid-market, cost-conscious,
                   | provider; shared analysts       | lacking security talent
Co-Managed SOC     | Hybrid: MSSP for L1/L2,         | Enterprises wanting control
                   | internal team for L3 and        | with cost efficiency
                   | threat hunting                  |
Virtual SOC        | No physical SOC; remote          | Distributed organizations,
                   | analysts with cloud SIEM        | cloud-first companies

SOC Staffing (24/7 In-House):
  L1 Analysts (Triage):          6-8 FTEs (for 24/7 coverage)
  L2 Analysts (Investigation):  4-6 FTEs
  L3 Analysts (Advanced):       2-3 FTEs
  Threat Hunters:                1-2 FTEs
  SOC Manager:                   1 FTE
  SOC Engineer (tooling):        2-3 FTEs
  Total:                         16-23 FTEs minimum for 24/7

  This is why most organizations cannot afford an in-house SOC
  and should consider co-managed or MSSP models.
```

### SOC Metrics

```
Metric                    | Target              | Why It Matters
--------------------------|---------------------|---------------------------
MTTD (Mean Time to Detect)| < 24 hours          | How fast you find threats
MTTR (Mean Time to        | < 4 hours (P1)      | How fast you contain threats
Respond)                  | < 24 hours (P2)     |
False Positive Rate       | < 30% of alerts     | Analyst burnout indicator
Alert-to-Incident Ratio   | 1 incident per      | Tuning effectiveness
                          | 100 alerts          |
Incidents Closed via      | > 40%               | Automation effectiveness
Automation (SOAR)         |                     |
Coverage (Detection       | > 80% of MITRE      | How complete is your
Rules)                    | ATT&CK techniques   | detection capability
```

## Security Tooling Landscape

### Tool Categories and Selection

```
Category       | Purpose                     | Leading Tools
---------------|-----------------------------|----------------------------
SIEM           | Log aggregation, correlation| Splunk, Microsoft Sentinel,
               | detection, investigation    | CrowdStrike LogScale, Elastic
SOAR           | Playbook automation,        | Palo Alto XSOAR, Splunk SOAR,
               | orchestration, response     | Microsoft Sentinel (built-in)
EDR/XDR        | Endpoint detection and      | CrowdStrike Falcon, Microsoft
               | response, extended          | Defender, SentinelOne,
               | detection                   | Palo Alto Cortex XDR
NDR            | Network traffic analysis,   | Darktrace, ExtraHop, Vectra
               | anomaly detection           |
CASB           | Cloud access security,      | Netskope, Zscaler, Microsoft
               | shadow IT, DLP              | Defender for Cloud Apps
Vulnerability  | Scanning, prioritization,   | Tenable, Qualys, Rapid7,
Management     | remediation tracking        | CrowdStrike Falcon Spotlight
Email Security | Anti-phishing, anti-malware | Proofpoint, Mimecast,
               | sandbox, URL rewriting      | Microsoft Defender for O365
WAF            | Web application firewall    | Cloudflare, AWS WAF, Akamai,
               |                             | F5
DLP            | Data loss prevention        | Symantec (Broadcom), Microsoft
               |                             | Purview, Forcepoint, Netskope

Consolidation Trend:
  The market is consolidating around platform plays:
  - Microsoft: Defender XDR + Sentinel + Entra ID + Purview
  - CrowdStrike: Falcon platform (EDR + identity + cloud + SIEM)
  - Palo Alto: Cortex XDR + XSOAR + Prisma Cloud

  For cost-conscious enterprises (especially Microsoft shops),
  the Microsoft security stack offers significant value through
  E5 licensing. Evaluate before buying point solutions.
```

## Security Transformation Roadmap

### Roadmap Structure

```
Phase 1: Foundation (0-6 months)
  - Security program charter and governance
  - Asset inventory and classification
  - MFA deployment (all users, all admin accounts)
  - Vulnerability management program
  - Security awareness training
  - Incident response plan (documented and tested)
  - Endpoint protection (EDR) deployment

Phase 2: Core Capabilities (6-18 months)
  - SIEM deployment and tuning
  - IAM program (SSO, PAM, lifecycle management)
  - Network segmentation (critical assets first)
  - Cloud security posture management
  - Third-party risk management program
  - Security metrics and board reporting

Phase 3: Advanced Capabilities (18-36 months)
  - Zero trust architecture implementation
  - Threat hunting program
  - SOAR implementation and playbook automation
  - DevSecOps integration
  - Data protection program (classification, DLP, encryption)
  - Security operations maturity optimization

Phase 4: Continuous Improvement (Ongoing)
  - Red team / purple team exercises
  - Threat intelligence operationalization
  - Quantitative risk management (FAIR)
  - Security culture measurement
  - Emerging technology security (AI, IoT, OT)
```

## Board-Level Security Reporting

### Effective CISO Board Reporting

```
What the Board Wants to Know:
  1. Are we secure? (Maturity trend, benchmark vs peers)
  2. What are our biggest risks? (Top 5, quantified if possible)
  3. Are we spending the right amount? (Benchmark, ROI on investments)
  4. What happened? (Material incidents, near-misses, lessons learned)
  5. What should we worry about? (Emerging threats, regulatory changes)

Report Structure (Quarterly, 10-15 slides max):

  Slide 1:  Executive Summary (3 bullets: posture, top risk, key action)
  Slide 2:  Security Maturity Trend (NIST CSF radar chart, quarter-over-quarter)
  Slide 3:  Top 5 Risks (heat map with mitigation status)
  Slide 4:  Key Metrics Dashboard (MTTD, MTTR, vulnerabilities, incidents)
  Slide 5:  Material Incidents (what happened, impact, response, lessons)
  Slide 6:  Threat Landscape (relevant threats to our industry)
  Slide 7:  Program Roadmap Progress (milestones achieved, upcoming)
  Slide 8:  Investment Summary (budget vs spend, ROI on key initiatives)
  Slide 9:  Regulatory and Compliance Update
  Slide 10: Recommendations and Asks (what the CISO needs from the board)

Communication Rules:
  - No jargon (say "criminal hackers" not "APT actors")
  - No FUD (fear, uncertainty, doubt) — be factual and measured
  - Quantify risk in business terms (financial impact, not CVSS scores)
  - Benchmark against industry peers (Gartner, Ponemon data)
  - Be honest about gaps (boards respect candor over false confidence)
```

## Security Due Diligence for M&A

### Due Diligence Framework

```
Phase 1: Preliminary Assessment (1-2 weeks)
  - Security program overview (policies, governance, team)
  - Known breaches and incidents (last 3 years)
  - Compliance certifications (SOC 2, ISO 27001, PCI-DSS)
  - Third-party audit reports
  - Insurance coverage (cyber insurance policy review)

Phase 2: Technical Assessment (2-4 weeks)
  - External attack surface analysis (Shodan, Censys, DNS recon)
  - Vulnerability scan results review
  - Penetration test reports (last 12 months)
  - Architecture review (network, identity, cloud, application)
  - Data protection practices (encryption, DLP, classification)
  - Incident response capability assessment

Phase 3: Risk Quantification (1-2 weeks)
  - Identified risks mapped to remediation cost
  - Integration security risks (network merging, identity merging)
  - Data privacy risks (cross-border data, consent, GDPR)
  - Regulatory risks (compliance gaps, required investments)
  - Estimated security integration budget

Key Findings That Affect Deal Value:
  - Undisclosed breaches (material impact on deal terms)
  - Systemic security weaknesses (cost of remediation)
  - Regulatory non-compliance (fines, required investment)
  - Technical debt requiring security remediation
  - Lack of security talent (CISO, security team)

Integration Planning:
  - Day 1: Network isolation (do NOT merge networks immediately)
  - Day 30: Identity integration planning
  - Day 90: Security tool standardization plan
  - Day 180: Network integration (phased, with security controls)
  - Day 365: Fully integrated security operations
```

## CISO Advisory

### CISO Priorities by Maturity

```
New CISO (First 90 Days):
  1. Understand the business (strategy, risk appetite, crown jewels)
  2. Assess current security posture (quick maturity assessment)
  3. Build relationships (CEO, CFO, CIO, General Counsel, Board)
  4. Identify quick wins (MFA, patching, awareness training)
  5. Draft security strategy (3-year vision, 1-year plan)
  6. Hire key roles (if gaps exist)

Established CISO (Ongoing):
  1. Risk management (quantify, prioritize, communicate)
  2. Program execution (roadmap delivery, metrics, governance)
  3. Talent management (hire, retain, develop security team)
  4. Board engagement (quarterly reporting, trust building)
  5. Vendor management (tool rationalization, contract negotiation)
  6. Incident readiness (tabletop exercises, playbook updates)

CISO Reporting Structure:
  Best Practice: CISO reports to CEO or Board, with dotted line to CIO
  Acceptable:    CISO reports to CIO with direct board access
  Red Flag:      CISO reports to CIO with no board access
  Rationale:     Security needs independence from IT to challenge
                 IT decisions and prioritize security investments
```

## Anti-Patterns

- **Buying security tools to solve governance problems.** Organizations that respond to audit findings or breach incidents by purchasing new tools without fixing the underlying governance, process, and accountability gaps will find themselves with more tools and the same vulnerabilities.
- **Implementing zero trust as a product purchase rather than an architecture transformation.** Zero trust is an architectural principle that requires systematic changes to identity management, network segmentation, application access, and data protection. No single vendor product delivers zero trust.
- **Treating compliance as equivalent to security.** Obtaining a SOC 2 attestation report or aligning with NIST CSF 2.0 demonstrates process maturity but does not guarantee that the organization can withstand a sophisticated attack. Compliance frameworks set minimum standards; effective security requires going beyond them.
- **Neglecting the human element in security architecture.** The most technically sophisticated security architecture fails if employees click phishing links, reuse passwords, or bypass security controls because they impede productivity. Security awareness, usable controls, and friction-minimized processes are architectural requirements.
- **Building security operations around alert volume rather than detection quality.** A SOC that generates thousands of alerts per day without the analytical capability to distinguish real threats from noise produces analyst fatigue and missed incidents. Invest in detection quality and alert prioritization before expanding detection coverage.

## What NOT To Do

- **Do not buy tools before understanding your gaps.** A $2M SIEM is useless if you do not have analysts to write detection rules and investigate alerts. Invest in people and process before technology.
- **Do not treat compliance as security.** Having a SOC 2 report does not mean you are secure. Compliance is a minimum bar, not a security strategy. Many breached organizations were fully compliant.
- **Do not ignore the basics.** MFA, patching, asset inventory, backup, and security awareness training prevent more breaches than any advanced threat detection tool. Master the fundamentals first.
- **Do not build a SOC without SOAR.** In 2025+, a SOC that manually triages every alert is unsustainable. Automate L1 triage and response to focus human analysts on real threats.
- **Do not skip tabletop exercises.** An incident response plan that has never been tested is fiction. Run tabletop exercises quarterly with executive participation. The time to learn your IR plan is not during an actual breach.
- **Do not present security to the board in technical jargon.** "We have 47,000 critical vulnerabilities" means nothing to a board member. "We have unpatched systems in our payment processing environment that could result in a $50M data breach" gets attention and action.
- **Do not try to secure everything equally.** Not all assets have the same value or risk. Classify your assets, identify your crown jewels, and invest disproportionately in protecting what matters most.
- **Do not neglect third-party risk.** Your security is only as strong as your weakest vendor. Assess the security posture of your critical third parties and include security requirements in every vendor contract.
## Current-framework verification

- Use NIST CSF 2.0's six functions, including **Govern**, as a risk communication structure rather than a certification claim.
- Verify the relevant edition of ISO/IEC 27001, NIST publications and sector-specific requirements at the date and jurisdiction of the assessment.
- Treat SOC 2 as an independent assurance/reporting process, not a "SOC 2 certification."

## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.

## Review & Production Validation (2026-10-31)

- **Domain control (Enterprise technology):** Verify platform and API versions, permissions, privacy controls, migration rollback and recovery objectives.
- **Independent validation:** Use staged acceptance testing, observability and explicit change approval before production rollout.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.


## Primary-reference framework note

NIST CSF 2.0 includes six functions: **Govern, Identify, Protect, Detect, Respond, Recover**. A SOC 2 attestation is not a security certification. Map controls to requirements and validate implementation evidence with https://www.nist.gov/cyberframework.
