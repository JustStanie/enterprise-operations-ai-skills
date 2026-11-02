---
name: cloud-migration
description: >-
  Use when the user needs cloud migration in enterprise technology: Inventory workloads,
  dependencies, data classification and current costs. Assess business drivers and map
  workloads to appropriate migration approaches.
---

# Cloud Migration

Act as an evidence-led cloud migration specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

Cloud migration done right is a once-in-a-decade opportunity to rationalize the application portfolio, modernize the operating model, and fundamentally change the cost structure of IT. Done wrong, it is a multi-million-dollar lift-and-shift that delivers none of the agility, scalability, or innovation benefits that justified the business case while producing a monthly cloud bill that makes the CFO regret the entire initiative.

The uncomfortable truth about enterprise cloud migration is that roughly 30% of the application portfolio should not be migrated at all. It should be retired, consolidated, or replaced with SaaS. Another 40% can be rehosted with minimal changes. Only 20-30% warrants the investment of refactoring or rearchitecting for cloud-native operation. Knowing which category each application belongs to before starting migration is the entire strategic challenge, and organizations that skip this classification step waste enormous resources moving applications that should have been retired.

Cloud migration is not a technology project; it is a business transformation that changes how the organization builds, operates, and funds IT. The shift from capital expenditure to operating expenditure, from provisioned capacity to elastic resources, and from change-averse operations to continuous delivery requires organizational change that is at least as significant as the technical migration itself.

## Philosophy

Most enterprises approach cloud migration backwards. They start with "let's move servers to the cloud" instead of "what business outcomes do we need, and how does cloud enable them?" The result is a more expensive version of the same mess, now with a monthly AWS bill that makes the CFO weep.

Cloud migration done right is a once-in-a-decade opportunity to rationalize your application portfolio, modernize your operating model, and fundamentally change your cost structure. Done wrong, it is a $50M lift-and-shift that delivers none of the agility, scalability, or innovation benefits that justified the business case.

The uncomfortable truth: about 30% of your application portfolio should not be migrated at all. It should be retired, consolidated, or replaced with SaaS. Another 40% can be rehosted with minimal changes. Only 20-30% warrants the investment of refactoring or rearchitecting. Knowing which is which before you start is the entire game.

## The 7 Rs Framework

```
Strategy       | Description                          | When to Use                    | Effort | Cloud Benefit
---------------|--------------------------------------|--------------------------------|--------|-------------
Rehost         | Lift and shift to cloud VMs          | Stable apps, DC exit deadline  | Low    | Low
Replatform     | Lift and reshape (e.g., move to      | Quick wins with moderate       | Medium | Medium
               | managed DB, containers)              | modernization benefit          |        |
Refactor       | Rearchitect for cloud-native         | Strategic apps needing scale,  | High   | High
               | (microservices, serverless)           | agility, or new capabilities   |        |
Repurchase     | Replace with SaaS                    | Commodity functions (HR, CRM,  | Medium | High
               |                                      | email, ITSM)                   |        |
Retire         | Decommission                         | Unused, redundant, or obsolete | Low    | N/A
               |                                      | applications                   |        |
Retain         | Keep on-premises (for now)            | Regulatory, latency, or cost   | None   | None
               |                                      | constraints                    |        |
Relocate       | Move to cloud without changes         | VMware-to-VMware Cloud,        | Low    | Low
               | (hypervisor-level migration)          | bare metal migrations          |        |
```

### Decision Tree for R Selection

```
Is the application still needed?
  NO  --> RETIRE
  YES --> Is there a SaaS equivalent that meets 80%+ of needs?
            YES --> REPURCHASE
            NO  --> Is it strategic and needs cloud-native capabilities?
                      YES --> REFACTOR
                      NO  --> Can we improve it with managed services easily?
                                YES --> REPLATFORM
                                NO  --> Are there regulatory/latency constraints?
                                          YES --> RETAIN
                                          NO  --> REHOST
```

## Cloud Readiness Assessment

### Application Portfolio Assessment

For each application, score across these dimensions:

```
Dimension               | Assessment Criteria                    | Weight
------------------------|----------------------------------------|-------
Business Criticality    | Revenue impact, user count, SLAs       | 25%
Technical Complexity    | Architecture, dependencies, state      | 20%
Cloud Compatibility     | OS, licensing, network requirements    | 20%
Data Sensitivity        | Regulatory, PII, sovereignty needs     | 15%
Migration Risk          | Downtime tolerance, rollback options   | 10%
Business Value of Cloud | Elasticity need, innovation potential  | 10%
```

### Infrastructure Assessment Checklist

```
- [ ] Complete server inventory (compute, storage, network)
- [ ] Application dependency mapping (use tools: ServiceNow, Flexera, Cloudamize)
- [ ] Network topology and bandwidth analysis
- [ ] Database inventory with sizes, engines, versions
- [ ] License audit (especially Oracle, SAP, Windows Server, SQL Server)
- [ ] Compliance and data residency requirements
- [ ] Current utilization data (CPU, memory, storage, IOPS)
- [ ] Disaster recovery and backup architecture
- [ ] Integration points and data flows
- [ ] Identity and access management architecture
```

## Migration Factory Approach

A migration factory is an industrialized, repeatable process for migrating workloads at scale. It is the only way to migrate hundreds or thousands of applications within a reasonable timeframe.

### Factory Lanes

```
Lane 1: Rehost Factory
  - Tooling: AWS MGN, Azure Migrate, Google Migrate for Compute Engine
  - Cadence: 20-50 servers per wave (bi-weekly)
  - Team: 4-6 migration engineers
  - Duration per wave: 2-3 weeks (prep, migrate, validate)

Lane 2: Replatform Factory
  - Tooling: AWS DMS (databases), containerization pipelines
  - Cadence: 5-15 applications per wave (monthly)
  - Team: 6-10 engineers (app + DB specialists)
  - Duration per wave: 4-6 weeks

Lane 3: Refactor/Modernize (Project-Based)
  - Not a factory; each app is a mini-project
  - Dedicated squads per application
  - Duration: 3-12 months per application
  - Requires architects, developers, QA
```

### Wave Planning

```
Wave 0: Foundation
  - Landing zone deployment
  - Network connectivity (VPN, Direct Connect/ExpressRoute)
  - Identity federation
  - Security tooling deployment
  - Monitoring and logging setup

Wave 1: Proof of Capability (2-5 low-risk apps)
  - Validate migration process
  - Test network connectivity
  - Validate security controls
  - Train the team
  - Build confidence with stakeholders

Wave 2-N: Migration Waves (increasing velocity)
  - Group by dependency clusters
  - Group by business unit or environment
  - Increase volume as team matures
  - Target 20% velocity increase per wave

Final Wave: Data Center Exit
  - Decommission remaining infrastructure
  - Terminate colocation/hosting contracts
  - Celebrate (seriously, throw a party)
```

## Landing Zone Design

### Core Landing Zone Components

```
Account/Subscription Structure:
  - Management/Root account
  - Security account (centralized logging, GuardDuty/Sentinel)
  - Shared Services account (DNS, Active Directory, CI/CD)
  - Network Hub account (Transit Gateway, firewalls)
  - Workload accounts (by environment, business unit, or app)

Network Architecture:
  - Hub-and-spoke or mesh topology
  - Transit Gateway / Virtual WAN for connectivity
  - Private subnets for workloads (no public IPs by default)
  - Centralized egress through inspection firewalls
  - Direct Connect / ExpressRoute for on-premises connectivity

Identity and Access:
  - Federated identity (Azure AD / Okta / Ping --> Cloud IAM)
  - Role-based access with least privilege
  - Break-glass accounts for emergencies
  - Service control policies / Azure Policies for guardrails

Security Baseline:
  - CIS Benchmark compliance (automated via Config Rules / Policy)
  - Encryption at rest and in transit (mandatory)
  - Centralized logging to security account
  - Automated vulnerability scanning
  - DDoS protection on public-facing workloads
```

## Cloud Provider Comparison (Enterprise Lens)

```
Dimension            | AWS                    | Azure                  | GCP
---------------------|------------------------|------------------------|---------------------
Enterprise Adoption  | Largest market share   | Strong with Microsoft  | Growing, esp. data
                     |                        | shops                  | and AI workloads
Hybrid Story         | Outposts, EKS Anywhere | Azure Arc, Azure Stack | Anthos, Distributed
                     |                        | HCI (strongest hybrid) | Cloud
Enterprise Sales     | Mature, aggressive     | Bundled with EA/M365   | Less mature, but
                     | discounting            | (cost advantage)       | improving rapidly
Data & Analytics     | Redshift, EMR, Glue    | Synapse, Fabric,       | BigQuery (best-in-
                     |                        | Purview                | class for analytics)
AI/ML Platform       | SageMaker, Bedrock     | Azure OpenAI, ML      | Vertex AI, Gemini
                     |                        | Studio                 | (strong research)
Networking           | Most mature VPC,       | Virtual WAN is         | Premium tier network
                     | Transit Gateway        | excellent for global   | is fastest globally
Compliance           | Most certifications,   | Strong gov cloud,      | Growing but fewer
                     | GovCloud               | sovereign offerings    | sovereign options
Cost Management      | Complex pricing,       | EA integration helps,  | Simpler pricing,
                     | many knobs to tune     | committed use less     | sustained use
                     |                        | flexible               | discounts are easy
```

**My honest take:** For most enterprises, the choice comes down to AWS vs Azure. If you are a Microsoft shop (M365, Windows Server, SQL Server, Active Directory), Azure gives you integration advantages and licensing economics that are hard to beat. If you are building cloud-native applications and want the deepest service catalog, AWS is the safe bet. GCP wins on data/analytics and AI but has a smaller enterprise ecosystem.

## FinOps and Cloud Cost Optimization

### Cost Optimization Levers

```
Lever                        | Savings Potential | Effort
-----------------------------|-------------------|--------
Right-sizing instances       | 20-40%            | Low
Reserved Instances / Savings | 30-50% vs on-     | Low
Plans / Committed Use        | demand            |
Spot/Preemptible instances   | 60-90% vs on-     | Medium
(non-critical workloads)     | demand            |
Storage tiering (S3 IA,      | 30-60% on storage | Low
Cool, Archive)               |                   |
Shutting down non-prod       | 40-70% on non-    | Low
evenings/weekends            | prod costs        |
Eliminating waste (unused    | 5-15% of total    | Low
EBS, old snapshots, idle LBs)| bill              |
Containerization / Serverless| 30-50% for right  | High
                             | workloads         |
```

### FinOps Operating Model

```
FinOps Team Structure:
  - FinOps Lead (reports to CTO or CFO)
  - Cloud Financial Analyst (cost modeling, forecasting)
  - Cloud Engineer (right-sizing, automation)
  - Business Partners (chargeback, showback)

Cadence:
  - Daily: Automated anomaly detection alerts
  - Weekly: Cost review by team/project
  - Monthly: Business unit chargeback/showback reports
  - Quarterly: Reserved capacity planning
  - Annually: Cloud strategy and provider negotiations
```

## Cloud Operating Model

### Key Shifts

```
From (Traditional IT)           --> To (Cloud Operating Model)
--------------------------------|--------------------------------
Ticket-based provisioning       | Self-service with guardrails
Manual infrastructure builds    | Infrastructure as Code (Terraform/Pulumi)
Quarterly release cycles        | CI/CD with daily deployments
Centralized ops team            | DevOps / platform engineering
CapEx budgeting (annual)        | OpEx consumption (monthly)
Change Advisory Board (weekly)  | Automated policy enforcement
Perimeter-based security        | Zero trust, identity-centric
Vendor-managed updates          | Shared responsibility model
```

### Platform Engineering Team

The most successful cloud organizations build an internal platform team that provides golden paths for development teams:

```
Platform Team Responsibilities:
  - Landing zone management and account vending
  - CI/CD pipeline templates
  - Infrastructure as Code modules (Terraform modules, CDK constructs)
  - Container platform management (EKS/AKS/GKE)
  - Observability stack (logging, monitoring, tracing)
  - Security tooling and compliance automation
  - Developer portal (Backstage or similar)
  - Cost visibility and optimization tooling
```

## Security and Compliance in the Cloud

```
Shared Responsibility Model:

Cloud Provider Manages:          Customer Manages:
  - Physical security              - Data classification and encryption
  - Network infrastructure         - Identity and access management
  - Hypervisor and host OS         - Application security
  - Service availability           - Network security (security groups, NACLs)
  - Compliance of infrastructure   - OS patching (for IaaS)
                                   - Compliance of workloads
```

### Compliance Approach

```
1. Map regulatory requirements to cloud controls
   (PCI-DSS, HIPAA, SOC 2, GDPR --> cloud-native controls)

2. Implement compliance-as-code
   (AWS Config Rules, Azure Policy, GCP Organization Policy)

3. Automate evidence collection
   (AWS Audit Manager, Azure Compliance Manager)

4. Continuous compliance monitoring
   (Not point-in-time audits; real-time drift detection)
```

## Anti-Patterns

- **Lifting and shifting everything without portfolio rationalization.** Moving every application to the cloud without evaluating whether it should be retired, replaced, or redesigned produces a more expensive version of the existing mess in a new location. Rationalize before migrating.
- **Building the business case on infrastructure cost savings alone.** Lift-and-shift migrations rarely save money on infrastructure costs. The real value of cloud comes from agility, speed of deployment, and the ability to innovate. Business cases built solely on cost savings will disappoint.
- **Migrating without establishing a cloud operating model.** The organizational practices, skills, processes, and governance structures required to operate effectively in the cloud are fundamentally different from on-premises operations. Migrating workloads without changing how the organization operates produces cloud-hosted chaos.
- **Choosing a cloud provider based on a single workload evaluation.** Provider selection should consider the full portfolio, existing skills, licensing agreements, data residency requirements, and multi-cloud strategy. A decision made for one application may create constraints or costs for hundreds of others.
- **Ignoring FinOps until the first cloud bill arrives.** Without cost governance, tagging strategies, and rightsizing practices established before migration, cloud spending grows unchecked. By the time the first surprising invoice arrives, waste has already been baked into the environment.

## What NOT To Do

- **Do not lift-and-shift everything and call it a cloud strategy.** Rehosting is a valid tactic for data center exit, but without modernization roadmap, you just have more expensive servers.
- **Do not migrate without a landing zone.** Migrating workloads into an unstructured cloud account is building tomorrow's technical debt today.
- **Do not ignore licensing.** Oracle and Microsoft licensing in the cloud is a minefield. Get a licensing specialist involved before you move a single Oracle database. The cost differences between providers can be millions of dollars.
- **Do not skip application dependency mapping.** Migrating an application without understanding its dependencies guarantees a production outage.
- **Do not build a multi-cloud strategy just because a slide deck said so.** Multi-cloud adds complexity and cost. Have a clear reason (regulatory, best-of-breed, vendor risk) or stay single-cloud.
- **Do not let cloud become shadow IT.** Developer credit cards and ungoverned cloud accounts are how you get a $2M surprise bill and a security breach.
- **Do not neglect the people side.** Cloud requires new skills (IaC, DevOps, cloud-native development). Budget for training and expect 12-18 months for cultural change.
- **Do not forget about egress costs.** Data transfer out of cloud is expensive. Architect for it, especially for multi-region and hybrid patterns.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.

## Review & Production Validation (2026-10-31)

- **Domain control (Enterprise technology):** Verify platform and API versions, permissions, privacy controls, migration rollback and recovery objectives.
- **Independent validation:** Use staged acceptance testing, observability and explicit change approval before production rollout.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
