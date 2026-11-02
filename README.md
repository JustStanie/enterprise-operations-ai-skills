# Enterprise Operations AI Skills

## Automated Skill catalog and audit status

<!-- AUTO-SKILL-SUMMARY:START -->
**Live inventory:** 59 Skills = 57 specialist + 2 support; **6 categories**.

The up-to-date category/Skill catalog is [`SKILL_INDEX.md`](SKILL_INDEX.md). The automatically synchronized audit status is [`TECHNICAL_AUDIT.md`](TECHNICAL_AUDIT.md); machine-readable checks are [`AUDIT_VALIDATION_RESULTS.json`](AUDIT_VALIDATION_RESULTS.json) and [`audit-register.json`](audit-register.json).

**Historical review status:** 57 unchanged since prior static review; 0 changed and pending reassessment; 0 new/unreviewed.

To refresh this catalog and audit reports, run `python scripts/sync_skill_audit.py --write` manually after editing Skills. No GitHub Actions or automatic commits are configured. This does not imply a new expert review.
<!-- AUTO-SKILL-SUMMARY:END -->

## Local audit maintenance — manual only

`SKILL_INDEX.md`, `audit-register.json`, `AUDIT_VALIDATION_RESULTS.json` and `TECHNICAL_AUDIT.md` are now **generated, not manually maintained**. The generator also refreshes the inventory summary at the top of this README. For manual maintenance, caveats and review status definitions, see [`AUDIT_AUTOMATION.md`](AUDIT_AUTOMATION.md).

```powershell
python .\scripts\sync_skill_audit.py --write
python .\scripts\sync_skill_audit.py --check
python -m unittest discover -s tests -p "test_*.py" -v
```

No GitHub Actions are configured: nothing runs on push or pull request, and no automatic commits are created. The local audit generator runs **only when explicitly invoked**. **Structural validation is not a fresh technical expert review.** New/changed methodologies require a separate substantive assessment.



Repository-scoped AI consultation library with **59 local Skills**: **57 specialized workflows in six categories**, one default **`enterprise-skill-router`**, and one context initializer. Designed for **Codex** and **Claude Code** without global Skill installation.

## Working with multiple chats and local Skills

**Recommended rule: one repository = one specialist knowledge library; one chat = one independent topic or project.**

### Keep independent chats independent

**A new chat should not inherit your preferences or decisions from an unrelated previous chat.** The agent chooses Skills and makes recommendations from the **current question**, the current chat and relevant evidence. Sharing the same repository only means the same specialist methods are available; it does not make a past topic a preference.

**Example (Crypto):** if chat A is about developing Solana smart contracts and chat B is about constructing a crypto portfolio, the agent should **not** promote SOL merely because you discussed Solana in chat A. SOL may be considered only if it independently fits the portfolio criteria or you request it.

If you **want** to continue an earlier discussion in a new chat, explicitly say so and provide its summary or files (or authorize the agent to retrieve relevant prior work when supported). Do not assume earlier decisions are present. `*-context-init` is **optional** and only maps available Skills; it **does not import earlier chats or clear memory**.

> **Limit:** this policy controls how the repo instructs the agent to behave; it cannot disable built-in cross-chat memory, global instructions, or other context sources provided by Codex/Claude. For strict separation, check the client's memory/privacy controls and workspace boundaries.

| Your situation | What to do | Is context initialization required? |
|---|---|---|
| New, unrelated question within enterprise strategy, operations, supply chains, managed services and technology | Open **enterprise-operations-ai-skills** in Codex Desktop or Claude Code and start a **new chat/thread**. Ask your question normally. | **No.** Repository instructions already direct the agent to the coordinator. |
| Continue an earlier discussion on the same problem | Return to the **existing chat** to retain its history and decisions. | No. |
| Want a quick overview of available Skills, or have just changed the library | In that chat, explicitly invoke the **context initializer**. | Optional, useful on demand. |
| Want to force a particular specialist | Invoke `$skill-name` (Codex) or `/skill-name` (Claude Code), if the client discovers that Skill. | No. |
| Need a different domain | Open that domain's **separate repository** and start a chat there. | No. Other repositories' Skills are not automatically included. |

### Start a new topic

**Codex Desktop:** open the `'enterprise-operations-ai-skills'` repository as a project, choose **New Thread / New Chat**, then ask your question. You do **not** need to clone the repository again or create a new folder for each discussion.

**Claude Code:** open a new session from the repository root (assuming the `claude` CLI is installed):

```powershell
cd C:\Code\Projects\SKILLS\enterprise-operations-ai-skills
claude
```

Within the active session, use `/clear` for a fresh conversation only if supported by your installed version, or exit and start `claude` again. Reuse an existing session when previous decisions are relevant.

### How the assistant picks Skills

1. The project `AGENTS.md` (Codex) or `CLAUDE.md` (Claude Code) directs the agent to the default `enterprise-skill-router`.
2. The coordinator identifies the topic, consults available Skill metadata, and reads only the relevant `SKILL.md` file(s).
3. You receive one coherent answer. Full instructions for all Skills are **not** loaded into every new conversation.

**Run `enterprise-context-init` only when you want to initialize or refresh the catalog explicitly.**

| Agent | Optional catalog initialization | Explicit coordinator |
|---|---|---|
| Codex Desktop | `$enterprise-context-init` | `$enterprise-skill-router` |
| Claude Code | `/enterprise-context-init` | `/enterprise-skill-router` |

If the command is not discovered, ask: `Read .agents/skills/enterprise-context-init/SKILL.md and provide a brief overview of the local skill catalog without loading all specialists.`

**Important:** initialization is not model training or permanent memory. A new chat has separate conversation history. If you need to continue specific decisions from another chat, provide a concise summary or relevant files. Repository files and Skills remain available in new sessions, subject to your agent version, file access, and global instruction priority.

## Clone and open this repository (Windows 11)

The repository is hosted at **https://github.com/JustStanie/enterprise-operations-ai-skills**.

For a **first-time clone** in PowerShell:

```powershell
cd C:\Code\Projects\SKILLS
git clone https://github.com/JustStanie/enterprise-operations-ai-skills.git
cd enterprise-operations-ai-skills
powershell -NoProfile -ExecutionPolicy Bypass -File .\setup-claude-skills.ps1
```

This setup links `.claude/skills/` to the existing `.agents/skills/` library **locally** on Windows; it does not install Skills globally. Verify the link and Skill discovery in your Claude Code version. A Windows Junction is not preserved by Git, so run the setup after cloning on another machine. If the folder is already cloned, open it directly; **do not clone again** for a new question. To update an existing clone, use `git pull` when you intend to fetch remote changes and have checked your local work.

## Initialize the AI Skill Context (optional)

Use this at the start of a new chat to load a **compact map of available skills**, not every skill's complete instructions. Initialization does **not** retrain the model or create persistent memory. You can skip it and ask your question normally: the coordinator is configured in `AGENTS.md` / `CLAUDE.md`.

| Platform | Initialize context | Ask the coordinator |
|---|---|---|
| **Codex Desktop** | `$enterprise-context-init` | `$enterprise-skill-router` |
| **Claude Code** | `/enterprise-context-init` | `/enterprise-skill-router` |

**Codex example:**

```text
$enterprise-context-init Review the locally available capabilities for this chat without loading all specialist instructions.
```

**Claude Code example:**

```text
/enterprise-context-init Initialize the local skill index for this session and briefly summarize the available categories.
```

If native Skill invocation is unavailable, use the text instruction `Read .agents/skills/enterprise-context-init/SKILL.md and initialize this chat.`

The reference inventory is `SKILL_INDEX.md`. The coordinator selects and reads only the relevant `SKILL.md` files when answering actual questions. After cloning on Windows, run `powershell -NoProfile -ExecutionPolicy Bypass -File .\setup-claude-skills.ps1` from the repository root to create the local Claude junction.

## Start here — Enterprise Skill Router

Use the coordinator for a question that may need one or multiple enterprise specialties. **You may also just ask a normal question**; the project instructions request automatic skill selection.

| Client | Invoke the default coordinator | Example |
|---|---|---|
| **Codex** | `$enterprise-skill-router` | `$enterprise-skill-router Compare procurement improvement options and expected risks.` |
| **Claude Code** | `/enterprise-skill-router` | `/enterprise-skill-router Plan a cross-team service redesign with SLAs and rollout gates.` |

For a specific specialization, invoke **`$data-migration`** (Codex) or **`/data-migration`** (Claude Code); the native command must be discovered by the installed client. The full prompt can follow the invocation on the same line.

### Typical questions

```text
$enterprise-skill-router Evaluate supplier continuity and inventory controls, with a phased 90-day plan.
```

```text
/enterprise-skill-router Design a reliable migration from a legacy ERP with reconciliation and cutover gates.
```

## Clone and local setup — Windows PowerShell

```powershell
cd C:\Code\Projects\SKILLS
git clone https://github.com/JustStanie/enterprise-operations-ai-skills.git
cd enterprise-ai-skills
powershell -NoProfile -ExecutionPolicy Bypass -File .\setup-claude-skills.ps1
```

The GitHub owner is `JustStanie`. If you already have the project locally, run only `setup-claude-skills.ps1` from its root directory. The script creates a **local Windows Junction** `.claude/skills` → `.agents/skills`, does not overwrite an existing path and does not install global Skills. After setup, open a fresh Claude Code session and verify discovery. Codex uses `.agents/skills/` directly. The junction itself is not portable through Git.

## Skills directory

Expand a category to see **every installed skill**, its purpose, practical capabilities and two directly usable prompts. There is **no second nested disclosure level**.

| Category | Scope | Specialized Skills |
|---|---|---:|
| Corporate Strategy | Growth choices, market entry, competitive analysis, transformation and portfolio decisions | 10 |
| Enterprise Technology | Enterprise architecture, platforms, cybersecurity, data migration, AI and modernization | 11 |
| Industry Advisory | Energy, financial services, industrials, insurance and retail operating models | 5 |
| Managed Services | Service operations, support models, outsourced processes, governance and SLAs | 10 |
| Operations Consulting | Process performance, manufacturing, inventory, service delivery and productivity | 11 |
| Supply Chain | Forecasting, inventory, logistics, procurement, supplier resilience and sustainability | 10 |
| **Total** | **Six specialist categories plus one router** | **57 + 1 coordinator** |

<details>
<summary><strong>Corporate Strategy — 10 Skills</strong> · Growth choices, market entry, competitive analysis, transformation and portfolio decisions</summary>

### `blue-ocean-strategy` — Blue Ocean Strategy

**Purpose:** Use when the user needs blue ocean strategy in corporate strategy: Map competing offerings on a strategy canvas and identify buyer pain points. Challenge industry factors using eliminate-reduce-raise-create.

**What you can do:** map competing offerings on a strategy canvas and identify buyer pain points; challenge industry factors using eliminate-reduce-raise-create; identify noncustomers and reconstruct market boundaries; test differentiated value against cost-to-serve and adoption hurdles.

**Typical measures:** Buyer utility and willingness to pay, Differentiation versus cost curve, Experiment conversion.

**Codex:** `$blue-ocean-strategy Create a strategy canvas for a regional logistics SaaS and propose three ERRC moves.`

**Claude Code:** `/blue-ocean-strategy Test a blue-ocean idea for a budget fitness service with buyer-utility evidence and risks.`

### `competitive-intelligence` — Competitive Intelligence

**Purpose:** Use when the user needs competitive intelligence in corporate strategy: Define the decision and legal intelligence questions before collecting evidence. Map direct, indirect and substitute competitors.

**What you can do:** define the decision and legal intelligence questions before collecting evidence; map direct, indirect and substitute competitors; compare product, pricing, distribution, capabilities and customer segments; separate observed signals from hypotheses and rate confidence.

**Typical measures:** Share of segment and feature coverage, Pricing and distribution gaps, Evidence confidence and freshness.

**Codex:** `$competitive-intelligence Compare five competitors for a B2B invoicing product using a capability matrix.`

**Claude Code:** `/competitive-intelligence Build a competitor early-warning dashboard with signals, sources and response triggers.`

### `corporate-restructuring` — Corporate Restructuring

**Purpose:** Use when the user needs corporate restructuring in corporate strategy: Identify cash constraints, operating losses and organizational bottlenecks. Build business-unit and legal-entity baselines.

**What you can do:** identify cash constraints, operating losses and organizational bottlenecks; build business-unit and legal-entity baselines; compare turnaround, divestiture, carve-out and refinancing paths; sequence stakeholder, employee, customer and creditor impacts.

**Typical measures:** Cash runway and liquidity headroom, EBITDA bridge and restructuring costs, Execution milestones.

**Codex:** `$corporate-restructuring Evaluate turnaround versus divestiture for an underperforming division with a cash bridge.`

**Claude Code:** `/corporate-restructuring Draft a restructuring decision memo covering stakeholder and execution risks.`

### `growth-strategy` — Growth Strategy

**Purpose:** Use when the user needs growth strategy in corporate strategy: Segment growth into core expansion, adjacencies, new products and new markets. Estimate growth pool and economics by segment.

**What you can do:** segment growth into core expansion, adjacencies, new products and new markets; estimate growth pool and economics by segment; identify growth constraints across acquisition, retention and operations; rank bets by value, confidence, capital and time to impact.

**Typical measures:** Incremental revenue and margin, CAC payback and retention, Risk-adjusted return on investment.

**Codex:** `$growth-strategy Create a three-year growth roadmap for a B2B services firm with initiative economics.`

**Claude Code:** `/growth-strategy Compare product expansion and market entry for a regional retail brand.`

### `innovation-strategy` — Innovation Strategy

**Purpose:** Use when the user needs innovation strategy in corporate strategy: Map business strategy to innovation themes and unmet needs. Construct a balanced portfolio of horizon-one through horizon-three bets.

**What you can do:** map business strategy to innovation themes and unmet needs; construct a balanced portfolio of horizon-one through horizon-three bets; define discovery experiments and evidence thresholds; compare build, partner, acquire and venture approaches.

**Typical measures:** Validated learning milestones, Innovation pipeline conversion, Portfolio spend versus options created.

**Codex:** `$innovation-strategy Design an innovation portfolio with discovery gates for a manufacturing group.`

**Claude Code:** `/innovation-strategy Draft an experiment plan to validate a new subscription service before funding development.`

### `market-entry-strategy` — Market Entry Strategy

**Purpose:** Use when the user needs market entry strategy in corporate strategy: Define target segment, geography and strategic reason to enter. Triangulate demand, competitive structure and regulatory barriers.

**What you can do:** define target segment, geography and strategic reason to enter; triangulate demand, competitive structure and regulatory barriers; compare organic launch, distribution partner, joint venture and acquisition; model unit economics, channel costs and operating requirements.

**Typical measures:** Addressable demand and attainable share, Entry investment and payback, Channel activation and conversion.

**Codex:** `$market-entry-strategy Compare direct entry versus a local partner for entering the Polish SaaS market.`

**Claude Code:** `/market-entry-strategy Build an entry scorecard for three markets including licensing and unit economics.`

### `market-sizing` — Market Sizing

**Purpose:** Use when the user needs market sizing in corporate strategy: Define the market boundary, customer and spend unit. Calculate top-down market size with traceable sources.

**What you can do:** define the market boundary, customer and spend unit; calculate top-down market size with traceable sources; build bottom-up estimates from customers, frequency and price; reconcile independent estimates and explain gaps.

**Typical measures:** TAM SAM SOM ranges, Unit assumptions and source confidence, Sensitivity to penetration and price.

**Codex:** `$market-sizing Size the market for warehouse software with top-down and bottom-up methods.`

**Claude Code:** `/market-sizing Create a TAM SAM SOM sensitivity table for SME cybersecurity services.`

### `portfolio-optimization` — Portfolio Optimization

**Purpose:** Use when the user needs portfolio optimization in corporate strategy: Define corporate objectives and constraints across business units. Evaluate attractiveness, competitive position, synergies and cash generation.

**What you can do:** define corporate objectives and constraints across business units; evaluate attractiveness, competitive position, synergies and cash generation; build a common financial and strategic scorecard; compare invest, hold, partner, harvest and divest pathways.

**Typical measures:** ROIC and cash conversion, Growth versus capital requirements, Synergy realization and downside exposure.

**Codex:** `$portfolio-optimization Rank four business units for investment or divestment using ROIC and synergies.`

**Claude Code:** `/portfolio-optimization Draft a portfolio allocation memo with downside cases and exit triggers.`

### `scenario-planning-strategy` — Scenario Planning Strategy

**Purpose:** Use when the user needs scenario planning strategy in corporate strategy: Identify focal decision and planning horizon. Separate predetermined trends from critical uncertainties.

**What you can do:** identify focal decision and planning horizon; separate predetermined trends from critical uncertainties; construct distinct plausible scenarios rather than best-base-worst extrapolations; stress-test strategic choices and identify no-regret moves.

**Typical measures:** Scenario signposts, Robustness of strategic options, Cost of hedging versus resilience.

**Codex:** `$scenario-planning-strategy Develop four scenarios for AI adoption in enterprise procurement through 2030.`

**Claude Code:** `/scenario-planning-strategy Stress-test a five-year expansion plan against energy price and regulation shifts.`

### `strategic-partnerships` — Strategic Partnerships

**Purpose:** Use when the user needs strategic partnerships in corporate strategy: Define mutual value and strategic dependencies. Screen partners for capability fit and incentive alignment.

**What you can do:** define mutual value and strategic dependencies; screen partners for capability fit and incentive alignment; model economics, exclusivity, IP, data and exit provisions; design governance, dispute resolution and joint KPIs.

**Typical measures:** Joint pipeline and revenue contribution, Partner delivery SLAs, Strategic dependency concentration.

**Codex:** `$strategic-partnerships Design a partner scorecard for a software and systems-integrator alliance.`

**Claude Code:** `/strategic-partnerships Draft a nonbinding partnership term-sheet outline and governance model.`

</details>

<details>
<summary><strong>Enterprise Technology — 11 Skills</strong> · Enterprise architecture, platforms, cybersecurity, data migration, AI and modernization</summary>

### `ai-analytics-enterprise` — AI Analytics Enterprise

**Purpose:** Use when the user needs ai analytics enterprise in enterprise technology: Identify business decisions and prioritize use cases by value and data readiness. Evaluate data quality, lineage, consent and access controls.

**What you can do:** identify business decisions and prioritize use cases by value and data readiness; evaluate data quality, lineage, consent and access controls; compare BI, predictive analytics and GenAI architectures; design model lifecycle, monitoring and human review.

**Typical measures:** Model or dashboard adoption, Forecast accuracy and drift, Cost per decision and realized value.

**Codex:** `$ai-analytics-enterprise Prioritize enterprise AI use cases using impact, feasibility and governance risk.`

**Claude Code:** `/ai-analytics-enterprise Design an AI analytics operating model with MLOps monitoring and human oversight.`

### `automation-robotics` — Automation Robotics

**Purpose:** Use when the user needs automation robotics in enterprise technology: Discover manual processes and confirm process stability. Quantify volume, exception rate and end-to-end cycle time.

**What you can do:** discover manual processes and confirm process stability; quantify volume, exception rate and end-to-end cycle time; choose API automation, workflow tools or RPA deliberately; design exception handling, credentials and audit trails.

**Typical measures:** Hours returned and cycle time, Bot exception and failure rate, Fully loaded cost per transaction.

**Codex:** `$automation-robotics Assess whether invoice matching should use RPA or API integration.`

**Claude Code:** `/automation-robotics Create an automation business case with exception-handling and support costs.`

### `cloud-migration` — Cloud Migration

**Purpose:** Use when the user needs cloud migration in enterprise technology: Inventory workloads, dependencies, data classification and current costs. Assess business drivers and map workloads to appropriate migration approaches.

**What you can do:** inventory workloads, dependencies, data classification and current costs; assess business drivers and map workloads to appropriate migration approaches; design identity, networking, backup, observability and landing zones; sequence migrations with tests, cutover and rollback plans.

**Typical measures:** Migration success and downtime, Cloud unit costs, Security control coverage and recovery objectives.

**Codex:** `$cloud-migration Make a cloud migration wave plan for 40 applications with dependencies.`

**Claude Code:** `/cloud-migration Compare rehost, replatform and refactor for a legacy ERP integration.`

### `cybersecurity-architecture` — Cybersecurity Architecture

**Purpose:** Use when the user needs cybersecurity architecture in enterprise technology: Identify business-critical assets, threats and trust boundaries. Assess current controls against an appropriate framework.

**What you can do:** identify business-critical assets, threats and trust boundaries; assess current controls against an appropriate framework; build layered identity, network, endpoint and data protections; prioritize remediation through likelihood, impact and exploitability.

**Typical measures:** Critical risk reduction, MFA coverage and privileged access, Detection and recovery time.

**Codex:** `$cybersecurity-architecture Design a zero-trust roadmap for a hybrid enterprise without assuming vendor products.`

**Claude Code:** `/cybersecurity-architecture Assess IAM and segmentation gaps for a company migrating to SaaS.`

### `data-migration` — Data Migration

**Purpose:** Plan, execute and validate database, platform or application data migrations while controlling continuity, consistency and rollback exposure.

**What you can do:** assess source and target schemas; choose bulk copy, CDC or phased cutover; design reconciliation checks and data-quality gates; plan backfills, dual-write failure handling, rollback windows and decommissioning.

**Typical measures:** Reconciliation pass rate, replication lag, data-loss tolerance (RPO), recovery time (RTO), cutover duration and unresolved exceptions.

**Codex:** `$data-migration Plan a PostgreSQL-to-cloud migration with CDC, validation queries and rollback decision gates.`

**Claude Code:** `/data-migration Compare blue-green, CDC and phased migration for a business-critical customer database.`

### `data-platforms` — Data Platforms

**Purpose:** Use when the user needs data platforms in enterprise technology: Inventory source systems, data consumers, latency and quality requirements. Compare warehouse, lakehouse and streaming patterns using workload evidence.

**What you can do:** inventory source systems, data consumers, latency and quality requirements; compare warehouse, lakehouse and streaming patterns using workload evidence; design ingestion, transformations, contracts, lineage and catalog controls; define access, privacy, observability and disaster recovery.

**Typical measures:** Data freshness and completeness, Query cost and latency, Incident rate and consumer trust.

**Codex:** `$data-platforms Compare Snowflake and lakehouse architectures for finance analytics workloads.`

**Claude Code:** `/data-platforms Design a data platform rollout with contracts, lineage, quality SLAs and costs.`

### `digital-product-consulting` — Digital Product Consulting

**Purpose:** Use when the user needs digital product consulting in enterprise technology: Define user problem and measurable business outcome. Interview stakeholders and map the current journey.

**What you can do:** define user problem and measurable business outcome; interview stakeholders and map the current journey; prioritize assumptions and design low-cost discovery tests; compare build, buy, partner and configurable platforms.

**Typical measures:** Activation and task success, Retention and adoption, Cost to serve and time to value.

**Codex:** `$digital-product-consulting Create a discovery plan for an enterprise purchasing portal before an MVP.`

**Claude Code:** `/digital-product-consulting Compare build versus buy for a customer self-service platform.`

### `enterprise-architecture` — Enterprise Architecture

**Purpose:** Use when the user needs enterprise architecture in enterprise technology: Map capabilities, application portfolio, integrations and technical debt. Define principles and decision records for target state.

**What you can do:** map capabilities, application portfolio, integrations and technical debt; define principles and decision records for target state; evaluate monolith, modular, microservices and integration patterns; specify security, data, resilience and ownership boundaries.

**Typical measures:** Application rationalization progress, Architecture exception counts, Reliability and integration lead time.

**Codex:** `$enterprise-architecture Define a target integration architecture for ERP CRM and warehouse systems.`

**Claude Code:** `/enterprise-architecture Build an architecture review checklist and phased transition roadmap.`

### `erp-implementation` — Erp Implementation

**Purpose:** Use when the user needs erp implementation in enterprise technology: Define process scope, sponsorship and measurable benefits. Compare vendors through requirements and fit-gap workshops.

**What you can do:** define process scope, sponsorship and measurable benefits; compare vendors through requirements and fit-gap workshops; profile master data and design migration reconciliation; plan integrations, controls, testing and training.

**Typical measures:** Reconciled migration records, Critical process test pass rate, Adoption and stabilization incidents.

**Codex:** `$erp-implementation Create an ERP fit-gap and cutover plan for a manufacturing company.`

**Claude Code:** `/erp-implementation Outline master-data migration controls for an ERP replacement.`

### `it-modernization` — It Modernization

**Purpose:** Use when the user needs it modernization in enterprise technology: Inventory applications, dependencies, ownership, risk and cost. Segment retain, retire, replace, rehost and refactor options.

**What you can do:** inventory applications, dependencies, ownership, risk and cost; segment retain, retire, replace, rehost and refactor options; build a business-value and technical-risk roadmap; design coexistence, strangler patterns and reversible migration steps.

**Typical measures:** Retired technical debt, Change failure and recovery rates, Run cost and performance.

**Codex:** `$it-modernization Prioritize 50 legacy applications for retirement or incremental modernization.`

**Claude Code:** `/it-modernization Design a strangler migration for a customer billing monolith.`

### `salesforce-consulting` — Salesforce Consulting

**Purpose:** Use when the user needs salesforce consulting in enterprise technology: Map sales and service workflows and stakeholder requirements. Audit objects, data quality, permissions and customizations.

**What you can do:** map sales and service workflows and stakeholder requirements; audit objects, data quality, permissions and customizations; design CRM process and integration improvements; implement staged changes with test and release governance.

**Typical measures:** CRM field completeness, Sales conversion and forecast accuracy, User adoption and case resolution.

**Codex:** `$salesforce-consulting Audit Salesforce lead-to-opportunity flow and propose a phased improvement plan.`

**Claude Code:** `/salesforce-consulting Draft a Salesforce data and permissions governance checklist.`

</details>

<details>
<summary><strong>Industry Advisory — 5 Skills</strong> · Energy, financial services, industrials, insurance and retail operating models</summary>

### `energy-consulting` — Energy Consulting

**Purpose:** Use when the user needs energy consulting in industry advisory: Map generation, grid, fuel or customer-service value chain. Assess market structure, regulation and asset constraints by jurisdiction.

**What you can do:** map generation, grid, fuel or customer-service value chain; assess market structure, regulation and asset constraints by jurisdiction; model capex, opex, reliability and commodity scenarios; compare transition investments and execution pathways.

**Typical measures:** Levelized cost where appropriate, Asset availability and reliability, Emissions and project payback.

**Codex:** `$energy-consulting Compare grid modernization investments under three demand scenarios.`

**Claude Code:** `/energy-consulting Assess a distributed-energy business case with regulatory dependencies.`

### `financial-services-consulting` — Financial Services Consulting

**Purpose:** Use when the user needs financial services consulting in industry advisory: Map product economics, customer segments and regulatory obligations. Assess customer journeys, controls and core platform constraints.

**What you can do:** map product economics, customer segments and regulatory obligations; assess customer journeys, controls and core platform constraints; prioritize opportunities in payments, digital channels and risk operations; model operational, compliance and financial effects.

**Typical measures:** Cost-to-income and service cost, Fraud loss and compliance exceptions, Digital adoption and customer attrition.

**Codex:** `$financial-services-consulting Assess modernization priorities for a mid-size retail bank.`

**Claude Code:** `/financial-services-consulting Design a digital onboarding improvement plan with financial crime controls.`

### `industrials-consulting` — Industrials Consulting

**Purpose:** Use when the user needs industrials consulting in industry advisory: Identify product and industrial value-chain economics. Baseline throughput, yield, downtime and maintenance costs.

**What you can do:** identify product and industrial value-chain economics; baseline throughput, yield, downtime and maintenance costs; diagnose production and supply bottlenecks; compare automation, asset upgrades and process improvements.

**Typical measures:** OEE and first-pass yield, Unplanned downtime, Cost per good unit.

**Codex:** `$industrials-consulting Build a smart-factory opportunity map for a metal parts plant.`

**Claude Code:** `/industrials-consulting Compare predictive maintenance against preventive maintenance economics.`

### `insurance-consulting` — Insurance Consulting

**Purpose:** Use when the user needs insurance consulting in industry advisory: Map underwriting, distribution, claims and capital processes. Evaluate pricing and claims data quality.

**What you can do:** map underwriting, distribution, claims and capital processes; evaluate pricing and claims data quality; identify friction, leakage and customer fairness risks; compare process and digital modernization options.

**Typical measures:** Combined ratio and loss ratio, Claims cycle time and leakage, Complaints and underwriting turnaround.

**Codex:** `$insurance-consulting Assess motor-insurance claims operations and automation opportunities.`

**Claude Code:** `/insurance-consulting Design a governance checklist for AI-assisted underwriting decisions.`

### `retail-consumer-consulting` — Retail Consumer Consulting

**Purpose:** Use when the user needs retail consumer consulting in industry advisory: Map customer segments, channels and merchandising economics. Assess assortment, pricing and promotion performance.

**What you can do:** map customer segments, channels and merchandising economics; assess assortment, pricing and promotion performance; evaluate inventory, store labor and digital funnels; prioritize customer experience and supply-chain changes.

**Typical measures:** Gross margin return on inventory, Same-store sales and basket size, Conversion and retention.

**Codex:** `$retail-consumer-consulting Analyze omnichannel profitability for a regional retailer.`

**Claude Code:** `/retail-consumer-consulting Design an assortment rationalization experiment with margin and service measures.`

</details>

<details>
<summary><strong>Managed Services — 10 Skills</strong> · Service operations, support models, outsourced processes, governance and SLAs</summary>

### `application-support` — Application Support

**Purpose:** Use when the user needs application support in managed services: Define service scope, business criticality and escalation tiers. Inventory applications, integrations and known failure modes.

**What you can do:** define service scope, business criticality and escalation tiers; inventory applications, integrations and known failure modes; design incident, problem, change and knowledge processes; set on-call, runbook, observability and vendor responsibilities.

**Typical measures:** MTTR and incident recurrence, SLA compliance, Change success and user satisfaction.

**Codex:** `$application-support Design L1-L3 support for a business-critical billing system.`

**Claude Code:** `/application-support Create a runbook outline for recurring application integration failures.`

### `claims-processing` — Claims Processing

**Purpose:** Use when the user needs claims processing in managed services: Map claim intake through adjudication, payout and appeals. Define control points, exceptions and human authority.

**What you can do:** map claim intake through adjudication, payout and appeals; define control points, exceptions and human authority; assess document quality, fraud flags and rules; design fair workflow automation with audit evidence.

**Typical measures:** Time to resolution, Straight-through processing, Quality errors and complaint rate.

**Codex:** `$claims-processing Redesign insurance claim intake with exception handling and fairness safeguards.`

**Claude Code:** `/claims-processing Draft a claims processing KPI framework with human review triggers.`

### `customer-support-ops` — Customer Support Ops

**Purpose:** Use when the user needs customer support ops in managed services: Segment contacts by channel, priority and resolution complexity. Estimate workload and staffing requirements.

**What you can do:** segment contacts by channel, priority and resolution complexity; estimate workload and staffing requirements; design routing, knowledge, escalation and QA workflows; evaluate self-service versus assisted channels.

**Typical measures:** First-contact resolution, CSAT and customer effort, Backlog age and cost per contact.

**Codex:** `$customer-support-ops Design a support staffing and escalation model for a SaaS business.`

**Claude Code:** `/customer-support-ops Build a root-cause analysis for rising repeat contact rates.`

### `it-service-desk` — It Service Desk

**Purpose:** Use when the user needs it service desk in managed services: Define service catalog, ticket priority and asset coverage. Build incident, request, problem and change relationships.

**What you can do:** define service catalog, ticket priority and asset coverage; build incident, request, problem and change relationships; map identity, device and software provisioning controls; develop knowledge articles, automation and escalation playbooks.

**Typical measures:** Mean time to restore, First-contact resolution, Ticket aging and knowledge reuse.

**Codex:** `$it-service-desk Design an IT service desk workflow for 800 employees.`

**Claude Code:** `/it-service-desk Define SLAs and escalation triggers for critical incidents.`

### `managed-finance-ops` — Managed Finance Ops

**Purpose:** Use when the user needs managed finance ops in managed services: Map accounts payable, receivable, close and reconciliations. Define segregation of duties, approvals and evidence trails.

**What you can do:** map accounts payable, receivable, close and reconciliations; define segregation of duties, approvals and evidence trails; standardize work instructions and exception queues; plan outsourcing transitions with data safeguards.

**Typical measures:** Days to close, Exception rate and reconciliation breaks, DSO DPO and processing cost.

**Codex:** `$managed-finance-ops Create controls and SLAs for outsourced accounts payable.`

**Claude Code:** `/managed-finance-ops Design a month-end close service scorecard with exception ownership.`

### `managed-hr-ops` — Managed HR Ops

**Purpose:** Use when the user needs managed hr ops in managed services: Define employee life-cycle processes and service boundaries. Map HRIS records, privacy and access responsibilities.

**What you can do:** define employee life-cycle processes and service boundaries; map HRIS records, privacy and access responsibilities; standardize onboarding, payroll interfaces and employee help; design escalations for sensitive cases and policy exceptions.

**Typical measures:** Payroll accuracy, Onboarding completion, HR ticket resolution and privacy incidents.

**Codex:** `$managed-hr-ops Design a managed employee onboarding and offboarding service.`

**Claude Code:** `/managed-hr-ops Create HR operations SLAs and privacy checkpoints for an outsourced provider.`

### `marketing-operations` — Marketing Operations

**Purpose:** Use when the user needs marketing operations in managed services: Audit campaign lifecycle, tooling, data and attribution. Define lead governance, consent and lifecycle stages.

**What you can do:** audit campaign lifecycle, tooling, data and attribution; define lead governance, consent and lifecycle stages; build campaign QA, templates and automation standards; reconcile CRM and marketing platform records.

**Typical measures:** MQL-to-SQL and pipeline contribution, Data completeness, Campaign error and deliverability rate.

**Codex:** `$marketing-operations Design marketing operations for a B2B campaign team.`

**Claude Code:** `/marketing-operations Audit campaign tracking and CRM lead handoff gaps.`

### `procurement-operations` — Procurement Operations

**Purpose:** Use when the user needs procurement operations in managed services: Map requisition-to-pay steps and stakeholder needs. Clarify spend approval, vendor onboarding and contract controls.

**What you can do:** map requisition-to-pay steps and stakeholder needs; clarify spend approval, vendor onboarding and contract controls; define exception handling and catalog automation; set service tiers and supplier communication standards.

**Typical measures:** Purchase-order cycle time, Maverick spend, Invoice-match exception rate.

**Codex:** `$procurement-operations Design a procure-to-pay service desk with approval controls.`

**Claude Code:** `/procurement-operations Build a procurement operations KPI dashboard and exception queue.`

### `security-operations-managed` — Security Operations Managed

**Purpose:** Use when the user needs security operations managed in managed services: Inventory protected assets, telemetry and response scope. Define detection coverage, alert severity and handoffs.

**What you can do:** inventory protected assets, telemetry and response scope; define detection coverage, alert severity and handoffs; design triage, investigation, containment approvals and evidence retention; test runbooks and threat scenarios.

**Typical measures:** MTTD and MTTR, Alert precision and false positives, Coverage of critical assets.

**Codex:** `$security-operations-managed Design an MSSP handoff model for an in-house security team.`

**Claude Code:** `/security-operations-managed Create a SOC detection tuning plan and critical-alert runbook.`

### `service-level-mgmt` — Service Level Mgmt

**Purpose:** Use when the user needs service level mgmt in managed services: Catalog services, customer expectations and dependency chains. Choose measurable SLIs and achievable SLOs.

**What you can do:** catalog services, customer expectations and dependency chains; choose measurable SLIs and achievable SLOs; define SLAs OLAs exclusions and reporting rules; model credits, escalations and change governance.

**Typical measures:** SLO attainment, Error budget burn, Incident recurrence and customer outcomes.

**Codex:** `$service-level-mgmt Draft a service-level framework for an outsourced platform team.`

**Claude Code:** `/service-level-mgmt Compare SLA penalties and reliability investment in a supplier agreement.`

</details>

<details>
<summary><strong>Operations Consulting — 11 Skills</strong> · Process performance, manufacturing, inventory, service delivery and productivity</summary>

### `customer-operations` — Customer Operations

**Purpose:** Use when the user needs customer operations in operations consulting: Map customer segments, contacts and service channels. Measure queues, handling effort and outcome quality.

**What you can do:** map customer segments, contacts and service channels; measure queues, handling effort and outcome quality; analyze repeat contacts, escalation and channel transfers; design workforce, knowledge and routing improvements.

**Typical measures:** First-contact resolution, Customer effort and CSAT, Cost per resolved contact.

**Codex:** `$customer-operations Optimize a contact center routing model with service-quality guardrails.`

**Claude Code:** `/customer-operations Identify root causes of repeated support requests and recommend actions.`

### `inventory-management-operations` — Inventory Management

**Purpose:** Use when the user needs inventory management in operations consulting: Map SKUs, storage sites and stock policies by service criticality. Segment demand variability and economic value using ABC/XYZ.

**What you can do:** map SKUs, storage sites and stock policies by service criticality; segment demand variability and economic value using ABC/XYZ; estimate lead-time demand, safety stock and reorder points; reconcile inventory records and constraints across locations.

**Typical measures:** Fill rate and inventory turns, Stockout days and aged stock, Working capital tied in inventory.

**Codex:** `$inventory-management-operations Create a policy for spare-parts stock using ABC/XYZ and reorder points.`

**Claude Code:** `/inventory-management-operations Analyze excess inventory at five warehouses with a working-capital plan.`

### `lean-six-sigma` — Lean Six Sigma

**Purpose:** Use when the user needs lean six sigma in operations consulting: Define customer-critical requirements and process defect. Measure baseline with validated operational definitions.

**What you can do:** define customer-critical requirements and process defect; measure baseline with validated operational definitions; analyze waste and variation using process mapping and root-cause tools; improve with prioritized countermeasures and pilot tests.

**Typical measures:** Defects per opportunity, Cycle time and rework, Process capability when statistically valid.

**Codex:** `$lean-six-sigma Build a DMAIC project charter for invoice exceptions.`

**Claude Code:** `/lean-six-sigma Design a value-stream map and control plan for order fulfillment.`

### `logistics-consulting` — Logistics Consulting

**Purpose:** Use when the user needs logistics consulting in operations consulting: Map origin-destination flows, constraints and service promises. Baseline network costs, lanes, utilization and failure points.

**What you can do:** map origin-destination flows, constraints and service promises; baseline network costs, lanes, utilization and failure points; compare carrier, warehouse and routing alternatives; model service reliability under demand and disruption scenarios.

**Typical measures:** On-time-in-full, Freight cost per unit, Damage rate and capacity utilization.

**Codex:** `$logistics-consulting Reconfigure a three-warehouse distribution network with service constraints.`

**Claude Code:** `/logistics-consulting Create a 3PL tender scorecard for a national delivery network.`

### `manufacturing-consulting` — Manufacturing Consulting

**Purpose:** Use when the user needs manufacturing consulting in operations consulting: Map materials, work centers and demand against capacity. Measure bottlenecks, scrap, downtime and schedule adherence.

**What you can do:** map materials, work centers and demand against capacity; measure bottlenecks, scrap, downtime and schedule adherence; analyze losses and process variability; evaluate layout, automation, maintenance and labor improvements.

**Typical measures:** OEE and throughput, First-pass yield, Cost per good unit and schedule attainment.

**Codex:** `$manufacturing-consulting Analyze bottlenecks at a packaging factory and quantify losses.`

**Claude Code:** `/manufacturing-consulting Build a production improvement plan with quality and safety metrics.`

### `process-improvement` — Process Improvement

**Purpose:** Use when the user needs process improvement in operations consulting: Define the process outcome, owner and scope. Draw the current flow including exceptions and handoffs.

**What you can do:** define the process outcome, owner and scope; draw the current flow including exceptions and handoffs; quantify throughput, wait time and rework; prioritize root causes and low-risk countermeasures.

**Typical measures:** Total lead time, Rework rate, Customer outcome and staff effort.

**Codex:** `$process-improvement Map a purchase approval process and remove its bottlenecks.`

**Claude Code:** `/process-improvement Recommend three process improvements with measurable baseline and tests.`

### `process-redesign` — Process Redesign

**Purpose:** Use when the user needs process redesign in operations consulting: Clarify customer outcome, policy constraints and nonnegotiable controls. Document as-is process with swimlanes and event handoffs.

**What you can do:** clarify customer outcome, policy constraints and nonnegotiable controls; document as-is process with swimlanes and event handoffs; diagnose structural causes of delay and failure demand; model future-state process, roles, technology and exceptions.

**Typical measures:** End-to-end cycle time, Cost per case, Exception and compliance failure rates.

**Codex:** `$process-redesign Redesign returns handling using BPMN-style swimlanes.`

**Claude Code:** `/process-redesign Develop a future-state claims process with decision gates and RACI.`

### `procurement-consulting` — Procurement Consulting

**Purpose:** Use when the user needs procurement consulting in operations consulting: Build spend and contract baselines with supplier segmentation. Define sourcing objectives and total-cost model.

**What you can do:** build spend and contract baselines with supplier segmentation; define sourcing objectives and total-cost model; evaluate suppliers for risk, quality, capacity and compliance; design negotiation strategy and contracting governance.

**Typical measures:** Realized not just negotiated savings, Supplier on-time delivery, Contract compliance and sourcing cycle time.

**Codex:** `$procurement-consulting Plan a sourcing event for logistics providers with weighted criteria.`

**Claude Code:** `/procurement-consulting Build a should-cost and supplier risk model for packaging purchases.`

### `service-delivery` — Service Delivery

**Purpose:** Use when the user needs service delivery in operations consulting: Define services, beneficiaries and ownership. Map incident request and change journeys.

**What you can do:** define services, beneficiaries and ownership; map incident request and change journeys; set SLIs, staffing and escalation rules aligned to business impact; improve self-service and knowledge while preserving accessibility.

**Typical measures:** SLA attainment, Mean resolution time, Customer satisfaction and backlog.

**Codex:** `$service-delivery Build an IT service catalog and monthly operations review.`

**Claude Code:** `/service-delivery Assess incident response bottlenecks in shared service delivery.`

### `shared-services` — Shared Services

**Purpose:** Use when the user needs shared services in operations consulting: Identify candidate processes and internal customer needs. Compare shared services outsourcing and hybrid operating models.

**What you can do:** identify candidate processes and internal customer needs; compare shared services outsourcing and hybrid operating models; define service catalog, roles, controls and transfer pricing; plan transition waves, knowledge transfer and service continuity.

**Typical measures:** Unit transaction cost, SLA quality, Transition leakage and customer satisfaction.

**Codex:** `$shared-services Design a shared-services center for finance and HR operations.`

**Claude Code:** `/shared-services Compare captive versus outsourced service models with transition costs.`

### `workforce-productivity` — Workforce Productivity

**Purpose:** Use when the user needs workforce productivity in operations consulting: Map work types, demand patterns and skills requirements. Establish ethical, job-relevant productivity measures.

**What you can do:** map work types, demand patterns and skills requirements; establish ethical, job-relevant productivity measures; diagnose workload imbalance, interruptions and tool friction; design staffing, cross-training and workflow improvements.

**Typical measures:** Throughput per paid hour, Backlog and service quality, Workload balance and employee experience.

**Codex:** `$workforce-productivity Build a workforce capacity model for a back-office team.`

**Claude Code:** `/workforce-productivity Diagnose overtime and queue growth using demand and productivity data.`

</details>

<details>
<summary><strong>Supply Chain — 10 Skills</strong> · Forecasting, inventory, logistics, procurement, supplier resilience and sustainability</summary>

### `demand-forecasting` — Demand Forecasting

**Purpose:** Use when the user needs demand forecasting in supply chain: Define forecast hierarchy, horizon and planning decisions. Audit demand history for missing values, promotions and intermittent series.

**What you can do:** define forecast hierarchy, horizon and planning decisions; audit demand history for missing values, promotions and intermittent series; establish naive and seasonal benchmarks before advanced models; backtest with time-respecting validation and reconcile forecasts.

**Typical measures:** WAPE and bias, Service-level impact, Forecast value added versus baseline.

**Codex:** `$demand-forecasting Compare seasonal-naive and statistical forecasts for 24 SKUs.`

**Claude Code:** `/demand-forecasting Build a demand forecasting validation plan with bias monitoring.`

### `inventory-management-supply-chain` — Inventory Management

**Purpose:** Use when the user needs inventory management in supply chain: Classify items by value, variability, lead time and criticality. Select periodic or continuous review policies by SKU.

**What you can do:** classify items by value, variability, lead time and criticality; select periodic or continuous review policies by SKU; estimate reorder point, safety stock and lot sizing from assumptions; model service levels under supply and demand shocks.

**Typical measures:** Fill rate, Days of supply, Inventory carrying cost and stockout frequency.

**Codex:** `$inventory-management-supply-chain Calculate reorder policies for service parts with variable supplier lead times.`

**Claude Code:** `/inventory-management-supply-chain Compare EOQ and periodic review for an e-commerce catalog.`

### `logistics-optimization` — Logistics Optimization

**Purpose:** Use when the user needs logistics optimization in supply chain: Build shipment, lane, cost and capacity datasets. Identify network and consolidation constraints.

**What you can do:** build shipment, lane, cost and capacity datasets; identify network and consolidation constraints; optimize routing, mode and carrier choices subject to service levels; stress-test fuel, disruption and peak demand scenarios.

**Typical measures:** Total landed logistics cost, On-time-in-full, Fleet utilization and empty miles.

**Codex:** `$logistics-optimization Create a multi-carrier selection model with service constraints.`

**Claude Code:** `/logistics-optimization Optimize a distribution network under peak-season demand stress.`

### `logistics-planning` — Logistics Planning

**Purpose:** Use when the user needs logistics planning in supply chain: Forecast shipment volume by origin, destination and time period. Match modes, equipment and fleet capacity to demand.

**What you can do:** forecast shipment volume by origin, destination and time period; match modes, equipment and fleet capacity to demand; schedule routes, handling, buffers and contingency resources; plan stakeholder handoffs and tracking milestones.

**Typical measures:** Plan adherence, Capacity sufficiency, Transit variance and exception aging.

**Codex:** `$logistics-planning Build a weekly shipment plan with capacity and contingency buffers.`

**Claude Code:** `/logistics-planning Create a transport plan for deliveries across multiple depots.`

### `procurement-strategy` — Procurement Strategy

**Purpose:** Use when the user needs procurement strategy in supply chain: Segment spend and strategic supplier categories. Analyze supply market, switching costs and dependency risks.

**What you can do:** segment spend and strategic supplier categories; analyze supply market, switching costs and dependency risks; choose sourcing approach and evaluation criteria; model landed cost, contract flexibility and lifecycle value.

**Typical measures:** Total cost of ownership, Realized savings, Supplier resilience and contract compliance.

**Codex:** `$procurement-strategy Develop a procurement strategy for IT equipment over three years.`

**Claude Code:** `/procurement-strategy Build an RFP evaluation matrix balancing cost and supply risk.`

### `supplier-management` — Supplier Management

**Purpose:** Use when the user needs supplier management in supply chain: Segment suppliers by criticality, spend and substitution difficulty. Establish due diligence and onboarding checks.

**What you can do:** segment suppliers by criticality, spend and substitution difficulty; establish due diligence and onboarding checks; define contract outcomes, scorecards and escalation paths; run joint performance and risk reviews.

**Typical measures:** On-time delivery, Quality defects, Supplier concentration and corrective-action closure.

**Codex:** `$supplier-management Create a supplier scorecard for electronic components.`

**Claude Code:** `/supplier-management Design a supplier risk review cadence for strategic vendors.`

### `supply-chain-analytics` — Supply Chain Analytics

**Purpose:** Use when the user needs supply chain analytics in supply chain: Map planning decisions to available datasets and ownership. Define consistent data models for orders, inventory and transport.

**What you can do:** map planning decisions to available datasets and ownership; define consistent data models for orders, inventory and transport; validate data quality and time boundaries; build descriptive and diagnostic dashboards with exception alerts.

**Typical measures:** OTIF and perfect-order rate, Stockout and inventory turns, Forecast and lead-time error.

**Codex:** `$supply-chain-analytics Design an S&OP dashboard with forecast and service measures.`

**Claude Code:** `/supply-chain-analytics Build a root-cause analysis for late shipments using operational data.`

### `supply-chain-risk` — Supply Chain Risk

**Purpose:** Use when the user needs supply chain risk in supply chain: Map tier-one and critical upstream dependencies. Identify single points of failure, disruption likelihood and impact.

**What you can do:** map tier-one and critical upstream dependencies; identify single points of failure, disruption likelihood and impact; assess substitution, buffer and lead-time recovery options; define contingency playbooks and early warning indicators.

**Typical measures:** Time to recover, Single-source exposure, Buffer coverage and risk mitigation cost.

**Codex:** `$supply-chain-risk Build a risk register for electronics imports with mitigation costs.`

**Claude Code:** `/supply-chain-risk Stress-test a supply chain against port closure and supplier insolvency.`

### `sustainable-supply-chain` — Sustainable Supply Chain

**Purpose:** Use when the user needs sustainable supply chain in supply chain: Map scope, hotspots and supplier data availability. Set environmental and ethical baselines with clear boundaries.

**What you can do:** map scope, hotspots and supplier data availability; set environmental and ethical baselines with clear boundaries; compare transport, materials, energy and circularity levers; evaluate cost, service and lifecycle trade-offs.

**Typical measures:** Emissions per delivered unit, Waste diversion and material recovery, Audit coverage and cost per improvement.

**Codex:** `$sustainable-supply-chain Compare rail and road transport using emissions and service trade-offs.`

**Claude Code:** `/sustainable-supply-chain Create a sustainable sourcing scorecard for a consumer goods brand.`

### `warehouse-operations` — Warehouse Operations

**Purpose:** Use when the user needs warehouse operations in supply chain: Profile SKU velocity, order patterns and storage constraints. Evaluate layout, slotting and picking paths.

**What you can do:** profile SKU velocity, order patterns and storage constraints; evaluate layout, slotting and picking paths; design inbound, inventory control and outbound workflows; plan staffing, automation and safe material handling.

**Typical measures:** Picks per labor hour, Order accuracy, Dock-to-stock and dispatch lead time.

**Codex:** `$warehouse-operations Redesign warehouse picking zones using ABC velocity data.`

**Claude Code:** `/warehouse-operations Develop a warehouse staffing and slotting plan for seasonal demand.`

</details>

## Notes and limitations

- The archive supplied for this revision contains **57 specialized Skills**, including the newly included `data-migration`. Skills absent from the new archive have not been restored from previous versions.
- These are project-local methodologies, not live business data, professional credentials or guaranteed operational outcomes.
- Numeric targets, fee estimates, productivity ratios and vendor features in source methodologies must be validated against actual data, current documentation and relevant contracts.
- Regulatory, safety-critical and sector-dependent recommendations require jurisdiction- and date-specific verification.
- `inventory-management-operations` and `inventory-management-supply-chain` are separate specializations by design.
- There is **no SkillDB download/sync script** in this repository.

---

<sub><i>Original topic descriptions were sourced from <a href="https://skilldb.dev/">SkillDB</a>. The local methodologies have been expanded and adapted independently; they are not guaranteed verbatim reproductions of full SkillDB sources.</i></sub>
