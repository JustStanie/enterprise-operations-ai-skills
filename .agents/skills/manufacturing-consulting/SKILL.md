---
name: manufacturing-consulting
description: >-
  Use when the user needs manufacturing consulting in operations consulting: Map materials,
  work centers and demand against capacity. Measure bottlenecks, scrap, downtime and schedule
  adherence.
---

# Manufacturing Consulting

Act as an evidence-led manufacturing consulting specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Manufacturing excellence is not achieved through any single initiative. It requires the disciplined integration of strategy, people, processes, and technology. The best manufacturers relentlessly pursue flow, eliminate waste, build quality at the source, and treat their operators as the true experts on the production floor. Technology is an accelerator, not a substitute, for operational discipline.

Never trust a manufacturing improvement plan that was built entirely in a conference room. The answers live on the shop floor -- go to the gemba.

## Manufacturing Strategy

A manufacturing strategy must directly serve the business strategy. The critical decisions involve what capabilities to invest in and how to configure the production network.

```
MANUFACTURING STRATEGY FRAMEWORK
===================================

Strategic Choices:

1. PROCESS TECHNOLOGY
   - Level of automation (manual, semi-auto, fully automated)
   - Technology generation (current vs next-gen)
   - Flexibility vs efficiency trade-off
   - Make vs buy decision for processes

2. CAPACITY
   - Lead vs lag vs match capacity strategy
   - Capacity cushion percentage
   - Expansion increment sizing
   - Geographic distribution of capacity

3. FACILITY NETWORK
   - Number and size of plants
   - Product focus vs process focus vs market focus
   - Centralized vs distributed manufacturing
   - Role of each plant in the network

4. VERTICAL INTEGRATION
   - Degree of forward/backward integration
   - Core process identification
   - Outsourcing candidates
   - Supplier proximity requirements

5. WORKFORCE
   - Skill requirements and development
   - Labor model (permanent, contract, seasonal mix)
   - Shift patterns and flexibility mechanisms
   - Automation impact on workforce planning

Order Qualifiers vs Order Winners:
- Qualifiers: what you must do to compete (table stakes)
- Winners: what differentiates you in the market
- Align manufacturing investments to order winners
```

## Capacity Planning

```
CAPACITY PLANNING METHODOLOGY
================================

LEVEL 1: STRATEGIC CAPACITY PLANNING (2-5 year horizon)
- Demand forecasting at aggregate level
- Capacity gap analysis vs projected demand
- Expansion/contraction options evaluation
- Capital investment planning
- Make vs buy decisions for capacity shortfalls

LEVEL 2: TACTICAL CAPACITY PLANNING (3-18 month horizon)
- Production plan alignment with S&OP
- Workforce planning (hiring, training, shift changes)
- Equipment procurement lead time management
- Subcontracting arrangements
- Inventory build strategies for seasonal peaks

LEVEL 3: OPERATIONAL CAPACITY PLANNING (daily-weekly)
- Production scheduling and sequencing
- Overtime and shift management
- Equipment allocation
- Bottleneck management
- Real-time adjustments

Key Calculations:

  Design Capacity = Maximum theoretical output (24/7, no losses)
  Effective Capacity = Design Capacity x Planned Utilization Rate
  Actual Output = Effective Capacity x Efficiency
  Utilization = Actual Output / Design Capacity
  Efficiency = Actual Output / Effective Capacity

  Capacity Cushion = 1 - Average Utilization Rate
  Recommended cushion: 10-25% (higher for variable demand)

Bottleneck Analysis (Theory of Constraints):
1. IDENTIFY the system constraint (bottleneck)
2. EXPLOIT the constraint (maximize its output)
3. SUBORDINATE everything else to the constraint
4. ELEVATE the constraint (invest to increase its capacity)
5. REPEAT (find the new constraint)
```

## OEE (Overall Equipment Effectiveness)

OEE is the single most important metric for manufacturing productivity. If you measure nothing else, measure OEE.

```
OEE CALCULATION
=================

OEE = Availability x Performance x Quality

AVAILABILITY = Run Time / Planned Production Time
  Losses: Breakdowns, changeovers, material shortages,
          unplanned stops

PERFORMANCE = (Ideal Cycle Time x Total Count) / Run Time
  Losses: Slow cycles, small stops, speed losses,
          operator inefficiency

QUALITY = Good Count / Total Count
  Losses: Scrap, rework, startup rejects,
          process defects

World-Class Benchmarks:
  Availability: 90%+
  Performance:  95%+
  Quality:      99.9%+
  OEE:          85%+

Typical Starting Point: 40-60% OEE

SIX BIG LOSSES (mapped to OEE components):
1. Equipment failure / breakdowns     -> Availability
2. Setup and changeover               -> Availability
3. Idling and minor stops             -> Performance
4. Reduced speed                      -> Performance
5. Process defects and rework         -> Quality
6. Reduced yield (startup losses)     -> Quality

OEE Improvement Priority:
- First fix Availability (biggest typical loss)
- Then address Performance (often hidden losses)
- Quality last (usually smallest gap but highest cost)
```

## Production Scheduling

```
PRODUCTION SCHEDULING APPROACHES
===================================

SCHEDULING METHODS:

Forward Scheduling:
- Start from today, schedule forward
- Calculates earliest completion date
- Good for make-to-order environments
- Risk: may create excessive WIP

Backward Scheduling:
- Start from due date, schedule backward
- Calculates latest start date
- Minimizes WIP and inventory
- Risk: no buffer for disruptions

Finite vs Infinite Capacity:
- Finite: respects actual resource constraints
- Infinite: assumes unlimited capacity (then resolve overloads)
- Always use finite for realistic scheduling

SEQUENCING RULES:
- FCFS (First Come First Served): simple but suboptimal
- SPT (Shortest Processing Time): minimizes average flow time
- EDD (Earliest Due Date): minimizes maximum tardiness
- Critical Ratio: due date / remaining processing time
- Bottleneck-based: schedule the constraint first

CHANGEOVER OPTIMIZATION:
- SMED (Single Minute Exchange of Die):
  1. Separate internal vs external setup tasks
  2. Convert internal to external where possible
  3. Streamline remaining internal tasks
  4. Eliminate adjustments
  - Target: reduce changeover by 50-90%

BATCH SIZE OPTIMIZATION:
  Economic Batch Quantity considers:
  - Changeover cost and time
  - Holding cost
  - Demand rate
  - Quality risk (larger batches = larger defect exposure)
  - Trend: smaller batches = more flexibility + less WIP
```

## Quality Management

```
QUALITY MANAGEMENT SYSTEM
============================

TOTAL QUALITY MANAGEMENT (TQM) PRINCIPLES:
1. Customer focus (quality defined by customer)
2. Total employee involvement
3. Process-centered approach
4. Integrated system thinking
5. Strategic and systematic approach
6. Continuous improvement
7. Fact-based decision making
8. Communications transparency

STATISTICAL PROCESS CONTROL (SPC):
- Control Charts: X-bar/R, X-bar/S, p-chart, c-chart
- Process Capability: Cp, Cpk, Pp, Ppk
  Cp = (USL - LSL) / (6 x sigma)
  Cpk = min[(USL - mean)/(3*sigma), (mean - LSL)/(3*sigma)]
  World-class target: Cpk >= 1.67 (5-sigma)

- Control Limits vs Specification Limits:
  Control limits = voice of the process (what it IS doing)
  Spec limits = voice of the customer (what it SHOULD do)
  Never confuse the two.

- Rules for Out-of-Control:
  1. Single point beyond 3-sigma control limit
  2. 7+ consecutive points on one side of center line
  3. 7+ consecutive points trending up or down
  4. 2 of 3 consecutive points beyond 2-sigma

QUALITY COST MODEL:
  Prevention costs (training, process design, FMEA)
  + Appraisal costs (inspection, testing, audits)
  + Internal failure costs (scrap, rework, downtime)
  + External failure costs (warranty, returns, reputation)
  = Total Cost of Quality

  Goal: invest more in prevention to reduce all other costs.
  Best-in-class total quality cost: 2-4% of revenue.

FMEA (Failure Mode and Effects Analysis):
  Risk Priority Number = Severity x Occurrence x Detection
  Prioritize actions on highest RPN items first.
```

## Factory Layout Optimization

```
LAYOUT TYPES AND SELECTION
============================

PROCESS LAYOUT (Job Shop):
  Best for: high variety, low volume, custom products
  Pros: flexibility, equipment utilization
  Cons: complex material flow, high WIP, long lead times

PRODUCT LAYOUT (Flow Line):
  Best for: low variety, high volume, standardized products
  Pros: low WIP, short lead times, simple control
  Cons: inflexible, vulnerable to line stoppages

CELLULAR LAYOUT (Manufacturing Cells):
  Best for: medium variety, medium volume, product families
  Pros: reduced material handling, team ownership, flexibility
  Cons: requires group technology analysis, possible duplicate equipment

FIXED POSITION LAYOUT:
  Best for: large/heavy products (ships, aircraft, construction)
  Pros: minimal product movement
  Cons: complex scheduling, high coordination needs

LAYOUT OPTIMIZATION METHOD:
1. Analyze product-quantity (P-Q) data
2. Determine process routings
3. Build from-to matrix (material flow volumes)
4. Minimize total material handling distance
5. Consider adjacency requirements and constraints
6. Use systematic layout planning (SLP) methodology
7. Evaluate alternatives with simulation
8. Plan for future flexibility and expansion
```

## Industry 4.0 / Smart Manufacturing

```
INDUSTRY 4.0 MATURITY ROADMAP
================================

LEVEL 1: COMPUTERIZATION
- Basic digital systems (ERP, MES)
- Islands of automation
- Manual data collection still prevalent

LEVEL 2: CONNECTIVITY
- Systems interconnected
- Real-time data from equipment (IoT sensors)
- Digital work instructions
- Automated data collection

LEVEL 3: VISIBILITY
- Digital twin of the factory
- Real-time dashboards
- Full traceability
- Condition monitoring

LEVEL 4: TRANSPARENCY
- Root cause analysis via data
- Advanced analytics
- Predictive quality
- Energy optimization

LEVEL 5: PREDICTABILITY
- Predictive maintenance (ML-based)
- Demand-driven production
- Simulation and scenario planning
- Autonomous quality inspection (computer vision)

LEVEL 6: ADAPTABILITY
- Self-optimizing production systems
- Autonomous decision-making
- Lights-out manufacturing sections
- AI-driven scheduling and planning

Key Technologies:
- Industrial IoT (sensors, edge computing)
- MES/MOM (Manufacturing Execution Systems)
- Digital Twin (virtual factory model)
- Computer Vision (quality inspection, safety)
- Predictive Analytics / ML (maintenance, quality)
- Collaborative Robots (cobots)
- Additive Manufacturing (3D printing for tooling/prototypes)
- AR/VR (training, remote assistance, maintenance)

Implementation Rule:
Start with a clear business problem, not the technology.
Pilot on one line, prove ROI, then scale. Avoid "boil the
ocean" digital transformation programs.
```

## Manufacturing Cost Reduction

```
MANUFACTURING COST REDUCTION LEVERS
======================================

MATERIAL COST (typically 40-70% of COGS):
- Value engineering / value analysis
- Specification optimization
- Yield improvement (reduce scrap/waste)
- Material substitution
- Strategic sourcing (volume consolidation)
- Supplier quality improvement (reduce incoming defects)

LABOR COST (typically 10-30% of COGS):
- Line balancing and workload optimization
- Automation of repetitive tasks
- Multi-skilling / cross-training
- Shift pattern optimization
- Reduce non-value-added activities
- Standard work implementation

OVERHEAD COST (typically 15-30% of COGS):
- Energy management (compressed air, HVAC, lighting)
- Maintenance strategy (preventive -> predictive)
- Indirect labor reduction (supervisory spans)
- Space utilization improvement
- Utility cost reduction
- Insurance and compliance cost management

HIDDEN FACTORY COSTS:
- Rework loops (often 5-15% of production)
- Expediting costs (overtime, premium freight)
- Excess inventory carrying costs
- Quality escapes to customers
- Unplanned downtime cascading effects

Cost Reduction Target Setting:
- Material: 2-5% annual reduction through VA/VE
- Labor productivity: 3-8% annual improvement
- Overhead: 2-4% annual reduction
- Total COGS improvement: 3-6% per year is achievable
```

## Production Planning and Control

```
PRODUCTION PLANNING HIERARCHY
================================

Level 1: AGGREGATE PRODUCTION PLAN (12-18 months)
  - Match production rate to demand forecast
  - Strategies: chase, level, or hybrid
  - Workforce and capacity decisions
  - Inventory build/depletion plans

Level 2: MASTER PRODUCTION SCHEDULE (MPS) (4-12 weeks)
  - Convert aggregate plan to specific products
  - Time-phased production quantities
  - Available-to-promise (ATP) calculation
  - Rough-cut capacity planning

Level 3: MATERIAL REQUIREMENTS PLANNING (MRP)
  - BOM explosion from MPS
  - Net requirements calculation
  - Planned order generation
  - Lot sizing decisions

Level 4: SHOP FLOOR CONTROL (daily/hourly)
  - Work order release
  - Dispatching and sequencing
  - Progress tracking and reporting
  - Exception management

Push vs Pull Systems:
  PUSH (MRP-driven): plan and push material through production
  PULL (Kanban-driven): produce only when downstream signals demand
  HYBRID: MRP for planning horizon, Kanban for execution
  Best practice: Use pull wherever possible, push only for
  long-lead or complex planning requirements.
```

## Continuous Improvement Programs

```
BUILDING A SUSTAINABLE CI CULTURE
====================================

PROGRAM STRUCTURE:
1. Daily management system
   - Tier 1: Team huddles at the line (shift start, 10 min)
   - Tier 2: Area review (daily, 15 min)
   - Tier 3: Plant review (daily/weekly, 30 min)
   - Tier 4: Site leadership review (weekly, 60 min)

2. Problem-solving methodology
   - Standard A3 problem-solving format
   - Train all supervisors in structured problem-solving
   - Visual management boards at each production area
   - Escalation process for unresolved issues

3. Improvement events
   - Kaizen events (1-week intensive, focused scope)
   - Kaizen blitzes (2-3 day rapid improvement)
   - Suggestion systems (operator-driven small improvements)
   - Six Sigma projects (complex, data-driven, 3-6 months)

4. Capability building
   - Lean/CI training curriculum by level
   - Internal CI coaches / lean practitioners
   - Certification pathway (belt system or equivalent)
   - Gemba walks by leadership (weekly, minimum)

SUCCESS FACTORS:
- Leadership must walk the talk (gemba presence)
- Focus on process, not blame
- Celebrate small wins visibly
- Track and report savings rigorously
- Build internal capability, do not rely on external consultants forever
- Integrate CI into performance reviews and career development

FAILURE WARNING SIGNS:
- CI is a "program" with an end date
- Only CI team does improvement work
- Leadership never visits the shop floor
- No standard problem-solving methodology
- Improvements not sustained after events
```

## Core Philosophy

Manufacturing excellence is not achieved through any single initiative, technology, or methodology. It requires the disciplined integration of strategy, people, processes, and technology — and the recognition that the answers to most manufacturing problems live on the shop floor, not in the conference room. The best manufacturers build systems where operators are the true process experts, quality is built at the source rather than inspected after the fact, and technology accelerates operational discipline rather than substituting for it.

The gemba — the actual place where work happens — is the most important location in any manufacturing improvement effort. Data, dashboards, and reports are essential for understanding patterns and tracking trends, but they are abstractions of reality. The sights, sounds, smells, and rhythm of the production floor reveal problems that no spreadsheet can capture: the operator's workaround that masks a design flaw, the material staging bottleneck that creates invisible waiting time, the environmental condition that triggers intermittent quality defects. Any manufacturing improvement plan built entirely in a conference room will miss 80% of the real issues, because the conference room contains only opinions about the shop floor, not the shop floor itself.

Manufacturing improvement follows a consistent hierarchy: first stabilize, then optimize, then automate. Stabilizing means establishing reliable, repeatable processes with basic controls and standard work. Optimizing means applying Lean and Six Sigma methods to eliminate waste and reduce variation in those stable processes. Automating means applying technology to processes that are already optimized and well-understood. Organizations that skip directly to automation — deploying Industry 4.0 sensors on unstable processes or automating workflows that have not been optimized — lock in waste permanently and expensively.

## Anti-Patterns

- **Desk-Based Improvement Plans**: Launching manufacturing improvement programs based on analysis of reports and dashboards without spending significant time observing operations on the shop floor. Data tells you what is happening in aggregate; the gemba tells you why. Improvement plans that skip observation consistently address symptoms rather than root causes.

- **Automating Before Optimizing**: Deploying robotics, IoT sensors, or advanced scheduling systems on processes that have not been stabilized and optimized first. Automating a wasteful process locks in waste at machine speed. The correct sequence is always simplify, standardize, stabilize, then automate. Technology is an accelerator of discipline, not a substitute for it.

- **Dishonest OEE Calculation**: Excluding planned downtime categories, reclassifying changeover time, or otherwise manipulating the OEE calculation to produce a better-looking number. Honest OEE measurement is the foundation of improvement — it reveals the true gap between current performance and world-class benchmarks. A manipulated OEE provides comfort without insight.

- **Adding Capacity at the Wrong Place**: Investing in capacity expansion for a production step that is not the current bottleneck. Theory of Constraints is clear: adding capacity anywhere other than the constraint adds cost without adding output. Before any capacity investment, identify the true bottleneck through rigorous analysis, not assumptions.

- **Technology for Technology's Sake**: Pursuing Industry 4.0 digital transformation as an end in itself rather than starting with a specific business problem and selecting the technology that solves it. "We need IoT" is not a strategy; "We need to reduce unplanned downtime by 30% and predictive maintenance using vibration sensors is the most cost-effective approach" is a strategy. Pilot on one line, prove ROI, then scale.

## What NOT To Do

- Do not launch a manufacturing improvement program without spending serious time on the shop floor first. Desk-based analysis misses 80% of the real issues.
- Do not implement Industry 4.0 technology without solid basic manufacturing disciplines in place. Sensors on an unstable process just give you real-time data about chaos.
- Do not calculate OEE incorrectly by excluding planned downtime categories to make the number look better. Honest measurement is the foundation of improvement.
- Do not copy another company's production system and expect it to work in your context. Principles transfer; specific practices must be adapted.
- Do not automate a process that has not been optimized first. Automating waste locks in waste permanently and expensively.
- Do not treat quality as an inspection problem. If you are inspecting quality in, you have already failed. Build quality at the source.
- Do not underestimate changeover reduction (SMED). It is consistently one of the highest-ROI manufacturing improvements and is often neglected.
- Do not plan capacity without understanding your true bottleneck. Adding capacity anywhere other than the bottleneck adds cost without adding output.
- Do not ignore the human element. The best manufacturing systems are built by engaged, skilled operators who own their processes. Technology without people capability is a waste of capital.
- Do not set cost reduction targets without understanding the cost structure first. Cutting 10% from a 5% cost element is less impactful than cutting 2% from a 60% cost element.
## Evidence, version and decision checks

- Establish the process boundary, demand volume, measurement baseline and constraints before claiming efficiency gains.
- Make quality, safety, capacity, labor, variability and customer-impact tradeoffs explicit.
- Pilot proposed improvements and compare before/after results; do not invent benefits or treat targets as validated forecasts.
