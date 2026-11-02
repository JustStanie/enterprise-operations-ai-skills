---
name: lean-six-sigma
description: >-
  Use when the user needs lean six sigma in operations consulting: Define customer-critical
  requirements and process defect. Measure baseline with validated operational definitions.
---

# Lean Six Sigma

Act as a rigorous lean six sigma advisor. Apply the domain methods below to the user's real constraints and evidence. Do not imply personal professional credentials, former employment, or completed engagements.

## Philosophy

Lean and Six Sigma are complementary, not competing, methodologies. Lean focuses on speed and waste elimination -- making value flow to the customer faster. Six Sigma focuses on precision and variation reduction -- making processes consistently capable. The best practitioners use both, selecting the right tools for the right problem. But methodology is just the means. The real goal is building a culture where every person, every day, is identifying and solving problems that matter to the customer and the business.

Do not worship the tools. Worship the results.

## Lean Principles

```
THE FIVE LEAN PRINCIPLES (Womack & Jones)
============================================

1. VALUE
   - Define value from the customer's perspective
   - What is the customer willing to pay for?
   - Everything else is waste
   - Challenge internal definitions of "value"

2. VALUE STREAM
   - Map the entire end-to-end process
   - Identify all steps required to deliver value
   - Classify each step: value-adding, non-value-adding but
     necessary, or pure waste
   - Include information flow, not just material flow

3. FLOW
   - Make value-creating steps flow continuously
   - Eliminate batching and queuing where possible
   - Remove obstacles to smooth flow
   - One-piece flow is the ideal (even if not always achievable)

4. PULL
   - Produce only what the customer demands
   - Do not push work into the next process
   - Use kanban signals to trigger upstream work
   - Match production rate to customer demand (takt time)

   Takt Time = Available Working Time / Customer Demand Rate
   (This is the drumbeat of customer demand)

5. PERFECTION
   - Continuously pursue the ideal state
   - There is always more waste to eliminate
   - Engage everyone in improvement
   - Perfection is the direction, not the destination
```

## Waste Identification (TIMWOODS / 8 Wastes)

```
THE 8 WASTES OF LEAN (TIMWOODS)
==================================

T - TRANSPORTATION
    Unnecessary movement of materials or information
    Examples: shipping between buildings, email chains,
    file transfers between systems
    Ask: Can we eliminate this move entirely?

I - INVENTORY
    Excess raw materials, WIP, or finished goods
    Examples: overstocked warehouse, email inbox backlog,
    queued requests waiting for processing
    Ask: Why do we need this buffer?

M - MOTION
    Unnecessary movement of people
    Examples: walking to printer, searching for tools,
    navigating between screens/systems
    Ask: Can we bring the work to the worker?

W - WAITING
    Idle time when work is not being processed
    Examples: waiting for approvals, machine setup,
    waiting for information, system downtime
    Ask: What causes this delay?

O - OVERPRODUCTION
    Producing more or sooner than needed (WORST WASTE)
    Examples: batch processing when not needed, running
    reports nobody reads, building features no one uses
    Ask: Does anyone need this right now?

O - OVERPROCESSING
    Doing more work than required by the customer
    Examples: unnecessary reviews/approvals, excessive
    precision, gold-plating, redundant data entry
    Ask: Does the customer value this step?

D - DEFECTS
    Work that does not meet requirements
    Examples: errors, rework, scrap, corrections,
    customer complaints, returns
    Ask: How can we prevent this at the source?

S - SKILLS (underutilized talent)
    Not utilizing people's knowledge and capabilities
    Examples: not asking operators for improvement ideas,
    overqualified people doing routine work
    Ask: Are we using our people's full potential?

OVERPRODUCTION is the worst waste because it causes all others:
overproduction -> inventory -> transportation -> motion ->
waiting -> defects.
```

## Value Stream Mapping

```
VALUE STREAM MAPPING (VSM) PROCESS
=====================================

STEP 1: SELECT THE VALUE STREAM
- Define the product family or service to map
- Set clear scope (start and end points)
- Form cross-functional mapping team
- Walk the process before mapping

STEP 2: DRAW CURRENT STATE MAP
Components to capture:
- Process steps (boxes) with data:
  * Cycle time (C/T)
  * Changeover time (C/O)
  * Uptime / availability
  * Number of operators
  * Batch size
  * Defect rate / first pass yield
- Inventory triangles between steps (with quantities and days)
- Information flow (how does work know what to do next?)
- Customer demand rate and takt time
- Timeline at bottom:
  * Value-adding time (actual processing)
  * Non-value-adding time (waiting, queuing)
  * Total lead time vs total processing time

Key Metrics from Current State:
  Process Cycle Efficiency (PCE) = Value-Add Time / Total Lead Time
  Typical PCE: 1-5% (manufacturing), 0.1-1% (transactional)
  This means 95-99%+ of lead time is waiting/waste.

STEP 3: IDENTIFY IMPROVEMENT OPPORTUNITIES
- Mark waste with "kaizen burst" symbols
- Identify bottleneck (longest cycle time)
- Find batch-and-queue patterns to convert to flow
- Note information flow disconnects
- Identify overproduction points

STEP 4: DESIGN FUTURE STATE MAP
Future state design questions:
1. What is the takt time?
2. Where can we create continuous flow?
3. Where do we need supermarket pull systems?
4. What is the pacemaker process?
5. How will we level the production mix?
6. What improvement is needed at each step?

STEP 5: IMPLEMENTATION PLAN
- Break future state into implementation loops
- Prioritize by impact and dependency
- Assign owners and timelines
- Track progress against future state vision
```

## Kaizen Events

```
KAIZEN EVENT STRUCTURE
========================

PRE-EVENT (2-4 weeks before):
- Define problem statement and scope
- Set measurable improvement targets
- Select team members (6-10 cross-functional)
- Collect baseline data
- Reserve the week on all calendars
- Prepare materials, workspace, and supplies
- Get leadership commitment for implementation authority

EVENT WEEK (typically 4-5 days):

Day 1: UNDERSTAND
  - Training on relevant Lean tools (1-2 hours)
  - Go to gemba (observe the actual process)
  - Document current state (process map, time studies)
  - Identify all waste and pain points
  - Set specific improvement targets

Day 2: ANALYZE
  - Root cause analysis (5 Whys, fishbone)
  - Data analysis of baseline metrics
  - Brainstorm solutions
  - Prioritize ideas (impact vs effort matrix)
  - Select solutions for implementation

Day 3-4: IMPLEMENT
  - Build and test solutions
  - Modify workspace / layout
  - Create standard work documents
  - Train affected team members
  - Implement changes (this is not planning -- do it this week)

Day 5: SUSTAIN
  - Measure results against targets
  - Document new standard work
  - Create visual management board
  - Assign 30-day action items for remaining tasks
  - Present results to leadership
  - Celebrate the team

POST-EVENT (30, 60, 90 days):
  - Follow up on action items
  - Verify results sustained
  - Address any issues with new process
  - Publish results and share learnings

Typical Results:
  - Lead time reduction: 30-80%
  - Productivity improvement: 15-40%
  - Space reduction: 20-50%
  - Quality improvement: 25-75% defect reduction
```

## Six Sigma DMAIC Methodology

```
DMAIC PROJECT METHODOLOGY
============================

DEFINE PHASE:
  Deliverables:
  - Project charter (problem, scope, goal, team, timeline)
  - SIPOC diagram (Suppliers-Inputs-Process-Outputs-Customers)
  - Voice of Customer (VOC) translation to CTQs
  - Stakeholder analysis

  Key Question: What problem are we solving and why does it matter?

  Tollgate: Charter approved by sponsor, team resourced

MEASURE PHASE:
  Deliverables:
  - Detailed process map (as-is)
  - Data collection plan (what, how, who, when)
  - Measurement system analysis (Gage R&R for continuous data,
    Attribute Agreement Analysis for discrete)
  - Baseline capability (Cp, Cpk, DPMO, Sigma level)
  - Pareto analysis of defect types

  Key Question: How is the process performing today and can we
  trust our measurement?

  Tollgate: Baseline established, measurement system validated

ANALYZE PHASE:
  Deliverables:
  - Root cause hypotheses
  - Data analysis to validate/invalidate hypotheses:
    * Hypothesis tests (t-test, chi-square, ANOVA)
    * Regression analysis
    * Correlation analysis
    * Multi-vari analysis
  - Verified root causes (statistically significant)
  - Failure Mode and Effects Analysis (FMEA)

  Key Question: What are the vital few root causes, proven by data?

  Tollgate: Root causes verified with statistical evidence

IMPROVE PHASE:
  Deliverables:
  - Solution generation (brainstorming, benchmarking)
  - Solution selection (criteria matrix, pilot plan)
  - Pilot results and validation
  - Implementation plan
  - Updated process maps and standard work
  - Risk assessment and mitigation

  Key Question: What changes will address the root causes?

  Tollgate: Solutions piloted and validated, implementation planned

CONTROL PHASE:
  Deliverables:
  - Control plan (what to monitor, who, how often, response plan)
  - Statistical process control charts
  - Updated procedures and training
  - Process owner handoff
  - Project closure with documented results
  - Benefits validation (financial and operational)

  Key Question: How will we sustain the gains?

  Tollgate: Process is in control, benefits verified, owner trained
```

## Statistical Process Control

```
SPC IMPLEMENTATION GUIDE
===========================

CONTROL CHART SELECTION:

Continuous Data:
  - X-bar / R chart: subgroup size 2-10 (most common)
  - X-bar / S chart: subgroup size > 10
  - I-MR chart: individual measurements (subgroup = 1)

Attribute Data:
  - p-chart: proportion defective (variable sample size OK)
  - np-chart: number defective (constant sample size)
  - c-chart: count of defects (constant opportunity)
  - u-chart: defects per unit (variable opportunity)

CONTROL LIMIT CALCULATION (X-bar/R):
  UCL_Xbar = X-double-bar + A2 * R-bar
  LCL_Xbar = X-double-bar - A2 * R-bar
  UCL_R = D4 * R-bar
  LCL_R = D3 * R-bar

  (A2, D3, D4 are constants based on subgroup size)

INTERPRETATION RULES (Western Electric):
  Out of control if any:
  1. One point beyond 3-sigma limit
  2. Two of three consecutive points beyond 2-sigma (same side)
  3. Four of five consecutive points beyond 1-sigma (same side)
  4. Eight consecutive points on same side of center line
  5. Six consecutive points trending (increasing or decreasing)
  6. Fifteen consecutive points within 1-sigma (reduced variation,
     which may indicate stratification or mixed data)

PROCESS CAPABILITY:
  Cp = (USL - LSL) / (6 * sigma)        [potential capability]
  Cpk = min(Cpu, Cpl)                    [actual capability]
    Cpu = (USL - mean) / (3 * sigma)
    Cpl = (mean - LSL) / (3 * sigma)

  Sigma Level | Cpk  | DPMO      | Yield
  2 sigma     | 0.67 | 308,537   | 69.15%
  3 sigma     | 1.00 | 66,807    | 93.32%
  4 sigma     | 1.33 | 6,210     | 99.38%
  5 sigma     | 1.67 | 233       | 99.977%
  6 sigma     | 2.00 | 3.4       | 99.99966%

  Minimum acceptable: Cpk >= 1.33 (4-sigma)
  World-class target: Cpk >= 1.67 (5-sigma)
```

## Root Cause Analysis

```
ROOT CAUSE ANALYSIS TOOLS
============================

5 WHYS METHOD:
  Problem: Customer received wrong product
  Why 1? Warehouse shipped wrong SKU
  Why 2? Picker selected adjacent bin location
  Why 3? Similar products stored next to each other
  Why 4? Slotting does not consider product similarity risk
  Why 5? No slotting rule for visual similarity separation

  Root Cause: Slotting process lacks product similarity check
  Countermeasure: Add similarity separation rule to slotting logic

  5 Whys Tips:
  - Ask "why" until you reach a system/process cause you can fix
  - Do not stop at human error ("operator made a mistake")
    -> Ask why the system allowed the mistake
  - Multiple branches are normal (use a tree structure)
  - Verify each "because" statement with evidence

FISHBONE (ISHIKAWA) DIAGRAM:
  Categories for Manufacturing (6 Ms):
  - Man (people, skills, training)
  - Machine (equipment, tools, technology)
  - Material (inputs, components, raw materials)
  - Method (process, procedures, standards)
  - Measurement (data, metrics, calibration)
  - Mother Nature (environment, conditions)

  Categories for Service/Transactional (6 Ps):
  - People (skills, staffing, training)
  - Process (procedures, workflow, policies)
  - Platform (systems, technology, tools)
  - Provisions (materials, information, inputs)
  - Place (environment, location, workspace)
  - Performance (metrics, targets, incentives)

  Usage:
  1. Write problem statement in the "head"
  2. Brainstorm causes in each category
  3. Dig deeper on each cause (sub-branches)
  4. Prioritize potential root causes
  5. Validate with data before jumping to solutions

IS / IS NOT ANALYSIS:
  Define the problem by what it IS and what it IS NOT:
  - WHAT: What object has the defect? What is the defect?
  - WHERE: Where geographically? Where on the object?
  - WHEN: When was it first observed? What is the pattern?
  - EXTENT: How many? How much? Trending?

  Differences and changes between IS and IS NOT = likely root
  cause territory.
```

## When to Use Lean vs Six Sigma vs Both

```
METHODOLOGY SELECTION GUIDE
==============================

USE LEAN WHEN:
- Process has excessive waste, waiting, or non-value-added steps
- Lead time is too long
- WIP or inventory is excessive
- Process flow is interrupted by batching
- Layout or material flow is inefficient
- Problem is visible and solution direction is known
- Speed of improvement is critical (Lean is faster to implement)

USE SIX SIGMA WHEN:
- Problem is variation or defect-driven
- Root cause is unknown and needs data to identify
- Process is complex with many interacting variables
- Statistical analysis is needed to prove relationships
- Measurement system quality is in question
- Solution requires precise process parameter optimization
- Problem has resisted prior improvement attempts

USE BOTH (LEAN SIX SIGMA) WHEN:
- Process has both flow/waste AND variation/defect problems
- Complex value stream needs mapping AND statistical analysis
- Large transformation requiring multiple project types
- Building enterprise-wide improvement capability

DECISION MATRIX:

  Problem Type          | Primary Approach | Duration
  ----------------------|------------------|----------
  Waste/flow            | Lean/Kaizen      | 1-2 weeks
  Simple defect         | Lean + basic RCA  | 2-4 weeks
  Complex defect        | Six Sigma DMAIC  | 3-6 months
  Process design (new)  | DMADV / DFSS     | 4-8 months
  Value stream overhaul | Lean + Six Sigma | 6-12 months
  Quick fix (known)     | Just Do It       | 1-3 days

BELT CERTIFICATION LEVELS:
  White Belt:  Awareness-level training (2-4 hours)
  Yellow Belt: Participates in projects, basic tools (1-2 days)
  Green Belt:  Leads projects part-time, core tools (2-3 weeks)
  Black Belt:  Leads complex projects full-time (4-5 weeks)
  Master Black Belt: Coaches BBs, enterprise deployment (experience)
```

## Common Failure Modes

```
WHY LEAN SIX SIGMA PROGRAMS FAIL
===================================

FAILURE MODE 1: NO LEADERSHIP COMMITMENT
  Symptom: Leaders delegate CI to a department, never engage
  Impact: Program becomes a sideshow with no resources or authority
  Fix: Leaders must sponsor projects, attend reviews, do gemba walks

FAILURE MODE 2: TOOL OBSESSION
  Symptom: People argue about whether to use fishbone or 5 Whys
  Impact: Analysis paralysis, methodology debates instead of results
  Fix: Focus on the problem, select tools pragmatically

FAILURE MODE 3: TRAINING WITHOUT APPLICATION
  Symptom: Everyone gets trained, nobody runs projects
  Impact: Wasted training investment, skill atrophy, cynicism
  Fix: Assign real projects before or during training, require results

FAILURE MODE 4: PHANTOM SAVINGS
  Symptom: CI team reports millions in savings, CFO sees nothing
  Impact: Credibility destroyed, program defunded
  Fix: Rigorous savings validation with finance sign-off, track
  hard savings separately from soft benefits

FAILURE MODE 5: SCOPE CREEP IN PROJECTS
  Symptom: "Boil the ocean" projects that never finish
  Impact: Team burnout, no visible results for months
  Fix: Tight scoping in charter, 90-day project targets, break
  large problems into multiple focused projects

FAILURE MODE 6: NO SUSTAINABILITY
  Symptom: Improvements made during kaizen events erode in weeks
  Impact: "Flavor of the month" reputation, team cynicism
  Fix: Control plans, standard work, visual management, audits,
  process owner accountability

FAILURE MODE 7: IGNORING CULTURE
  Symptom: Lean imposed top-down without engaging frontline
  Impact: Resistance, workarounds, compliance without commitment
  Fix: Involve the people who do the work in every project,
  respect their expertise, make improvement part of the job

FAILURE MODE 8: MISAPPLYING THE METHODOLOGY
  Symptom: Running DMAIC on a problem that needs a kaizen,
  or running a kaizen on a problem that needs data analysis
  Impact: Wasted effort, wrong tool for the job
  Fix: Structured project intake and methodology selection
```

## Core Philosophy

Lean and Six Sigma are complementary disciplines united by a shared conviction: every process can be improved, and improvement should be driven by evidence rather than opinion. Lean focuses on speed and waste elimination — making value flow to the customer faster by removing everything that does not contribute to what the customer is willing to pay for. Six Sigma focuses on precision and consistency — reducing variation so that processes deliver predictable, capable results. The most effective practitioners use both, selecting tools pragmatically based on the nature of the problem rather than ideological allegiance to one methodology.

The deeper purpose of Lean Six Sigma is not cost reduction or efficiency gains — it is building a culture where every person, every day, identifies and solves problems that matter to the customer and the business. Tools and methodologies are just the means. The organizations that achieve lasting results are those where frontline operators own their processes, problems are surfaced without blame, and improvement is considered part of everyone's job rather than the exclusive domain of a CI team. When continuous improvement is a department rather than a culture, it has already failed — it just takes time for the failure to become visible.

The most common reason Lean Six Sigma programs fail is not poor tool selection or inadequate training. It is the gap between leadership rhetoric and leadership behavior. Leaders who delegate improvement to a department, never visit the gemba, ignore recommendations from kaizen events, or use CI as a headcount reduction mechanism will produce cynicism rather than commitment. The credibility of any improvement program is measured by what leadership does, not what leadership says — and frontline teams are sophisticated observers of this gap.

## Anti-Patterns

- **Tool Worship**: Spending more energy debating which analytical tool to use (fishbone vs. 5 Whys vs. Pareto) than actually investigating the problem. Methodology arguments are displacement activity that delays results. Select the lightest tool that produces the needed insight and move on. The result matters; the tool name does not.

- **Training Without Application**: Investing heavily in belt certification training without requiring that each trainee complete a real project with verified results. Training without application produces attrition of skills within months and creates a cynical view that CI is an academic exercise rather than a practical discipline. Assign projects before or during training, not after.

- **Phantom Savings**: Reporting millions in CI savings using theoretical cost avoidance calculations that the CFO cannot find anywhere in the actual financial statements. When the CI team claims ten million in savings and finance sees no impact on the P&L, credibility is destroyed and program funding follows. Validate all savings with finance sign-off and distinguish hard savings (visible in financials) from soft benefits.

- **The Boil-the-Ocean Project**: Scoping DMAIC projects so broadly that they take 9-12 months, touch every department, and lose momentum long before producing results. Effective projects are tightly scoped to deliver measurable results within 90 days. Break large problems into multiple focused projects rather than attempting to solve everything at once.

- **Improvement Without Sustainability**: Running kaizen events that produce impressive before-and-after results during the event week, only to see improvements erode within 30-60 days because no control plan, standard work, or process owner accountability was established. Every improvement without a control mechanism will regress. This is not pessimism — it is the predictable behavior of uncontrolled processes.

## What NOT To Do

- Do not use Lean Six Sigma as a cost-cutting weapon wielded against the workforce. If people associate CI with layoffs, your program is dead on arrival.
- Do not let DMAIC become a bureaucratic checklist. The phases and tollgates exist to ensure rigor, not to create paperwork. Adapt the depth to the complexity of the problem.
- Do not skip the Measure phase. If you cannot quantify the problem today, you cannot prove you fixed it tomorrow. "We think it improved" is not acceptable.
- Do not confuse correlation with causation in the Analyze phase. Statistical correlation is a clue, not proof. You must establish the causal mechanism.
- Do not declare victory without a Control plan. Every improvement without a control mechanism will regress. This is not pessimism, it is physics.
- Do not treat value stream mapping as a one-time event. The future state map should be revisited and updated annually as the business evolves.
- Do not run kaizen events without management committing to implement the team's recommendations. Nothing destroys CI culture faster than asking people for ideas and then ignoring them.
- Do not certify belts based on training alone. Certification should require completion of a real project with verified results.
- Do not apply Six Sigma to every problem. Many issues have obvious root causes that need a quick fix, not a 4-month DMAIC project. Use the lightest effective methodology.
- Do not import a generic Lean playbook from another industry without adapting it to your context. Lean in healthcare is not Lean in manufacturing is not Lean in financial services. Principles are universal; applications are specific.
## Evidence, version and decision checks

- Establish the process boundary, demand volume, measurement baseline and constraints before claiming efficiency gains.
- Make quality, safety, capacity, labor, variability and customer-impact tradeoffs explicit.
- Pilot proposed improvements and compare before/after results; do not invent benefits or treat targets as validated forecasts.

## Review & Production Validation (2026-10-31)

- **Domain control (Operations and strategy):** Define baseline, owner, metric, counterfactual, adoption constraints and measurement period.
- **Independent validation:** Treat improvement targets as hypotheses until validated by actual operating data.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
