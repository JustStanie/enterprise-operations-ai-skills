---
name: logistics-consulting
description: >-
  Use when the user needs logistics consulting in operations consulting: Map origin-destination
  flows, constraints and service promises. Baseline network costs, lanes, utilization and
  failure points.
---

# Logistics Consulting

Act as an evidence-led logistics consulting specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Philosophy

Logistics is where supply chain strategy meets physical reality. The best logistics operations achieve the seemingly contradictory goals of faster delivery, lower cost, and higher reliability simultaneously -- not by working harder, but by designing smarter networks, leveraging data for decisions, and building flexible execution capabilities. Every logistics decision involves trade-offs between cost, speed, and reliability, and the winning approach is to shift the trade-off frontier rather than simply choosing a point on it.

## Network Design (Warehouse Location Optimization)

Network design is the highest-leverage decision in logistics. Getting the network structure right can reduce total logistics costs by 10-25% while improving service levels.

```
NETWORK DESIGN METHODOLOGY
=============================

Phase 1: DATA COLLECTION AND BASELINING
- Customer demand data by location (ship-to points)
- Current facility locations, capacities, costs
- Transportation lanes, volumes, rates
- Inbound supply points (suppliers, ports)
- Service requirements (delivery time commitments)
- Inventory levels by location
- Total logistics cost baseline

Phase 2: MODELING AND SCENARIO ANALYSIS
- Build network optimization model
- Define objective function (minimize total cost subject
  to service constraints, or maximize service subject to
  cost budget)

  Total Logistics Cost =
    Facility fixed costs (rent, labor, utilities)
    + Facility variable costs (handling, storage)
    + Inbound transportation costs
    + Outbound transportation costs
    + Inventory carrying costs
    + Order processing costs

- Run scenarios:
  a) Optimize current network (reassign demand)
  b) Add/remove facilities
  c) Change facility roles (full-line vs regional vs forward)
  d) Test service level sensitivities
  e) Stress test with demand growth scenarios

Phase 3: EVALUATION AND RECOMMENDATION
- Compare scenarios on total cost, service, risk
- Sensitivity analysis on key assumptions
- Implementation feasibility assessment
- Migration plan and timeline
- Capital requirements and payback period

Key Trade-offs:
- More facilities = lower outbound transport + faster delivery
  BUT higher facility costs + higher inventory
- Fewer facilities = scale economies + lower inventory
  BUT higher outbound transport + slower delivery
- Sweet spot depends on product characteristics, customer
  requirements, and cost structure
```

## Transportation Management

```
TRANSPORTATION OPTIMIZATION LEVERS
=====================================

MODE SELECTION:
  Full Truckload (FTL): lowest cost/unit, point-to-point
  Less-Than-Truckload (LTL): smaller shipments, hub-and-spoke
  Parcel: small packages, extensive network
  Intermodal: rail + truck, lower cost for long haul
  Air Freight: fastest, most expensive, time-critical only
  Ocean: lowest cost, longest transit, international

  Rule: Ship the largest quantity by the slowest acceptable
  mode. Every upgrade in speed is a premium you must justify.

FREIGHT COST REDUCTION STRATEGIES:
1. Mode conversion (LTL -> FTL via consolidation)
2. Route optimization (reduce miles, improve stop density)
3. Carrier rate negotiation (benchmark and bid regularly)
4. Shipment consolidation (combine orders to same region)
5. Backhaul utilization (use empty return trips)
6. Dimensional weight optimization (packaging right-sizing)
7. Freight audit and payment (recover overcharges, typically 2-5%)
8. Pool distribution (consolidated to hub, then distributed)
9. Zone skipping (bypass carrier sortation, reduce zones)
10. Private fleet optimization (vs common carrier trade-off)

CARRIER MANAGEMENT:
- Core carrier program (80% volume to 3-5 carriers per mode)
- Annual RFP process with lane-level bidding
- Carrier scorecard: on-time, claims ratio, cost, responsiveness
- Spot market for overflow only (target <10% of volume)
- Dedicated contracts for predictable, high-volume lanes
```

## Last-Mile Delivery

```
LAST-MILE DELIVERY STRATEGIES
================================

Last mile = 40-55% of total delivery cost.
It is the most expensive and most visible part of logistics.

DELIVERY MODELS:
1. Hub-and-spoke (traditional carrier model)
2. Direct from store (omnichannel fulfillment)
3. Micro-fulfillment centers (urban, automated, close to customer)
4. Crowdsourced delivery (gig economy drivers)
5. Locker networks (customer picks up from secure locker)
6. Click and collect (customer picks up from store/location)

OPTIMIZATION LEVERS:
- Dynamic routing and scheduling (AI-based)
- Delivery density improvement (minimum stops per route)
- Time window management (wider windows = lower cost)
- Delivery attempt reduction (reduce failed deliveries)
- Proof of delivery automation (photo, GPS, signature)
- Customer communication (real-time tracking, ETA updates)

COST PER DELIVERY BENCHMARKS:
- Traditional parcel carrier: $6-12
- Dedicated local fleet: $4-8
- Crowdsourced: $5-10
- Locker/pickup: $1-3
- Varies dramatically by density, distance, and package size

SAME-DAY / NEXT-DAY ECONOMICS:
- Requires forward-positioned inventory (expensive)
- Only viable for high-velocity, high-margin SKUs
- Micro-fulfillment or store-based fulfillment needed
- Customer willingness to pay premium is declining
- Use strategically, not as blanket offering
```

## 3PL Selection and Management

```
3PL SELECTION FRAMEWORK
==========================

WHEN TO USE A 3PL:
- Non-core logistics competency
- Volume variability requires flexibility
- Geographic expansion without capital investment
- Need for specialized capabilities (cold chain, hazmat)
- Cost benchmarking shows external advantage

3PL TYPES:
- Asset-based: own trucks/warehouses (dedicated capacity)
- Non-asset/asset-light: manage operations using subcontractors
- Lead Logistics Provider (LLP): manage other 3PLs for you
- 4PL: strategic logistics management, technology platform

SELECTION PROCESS:
1. Define scope and requirements clearly (SOW)
2. Issue RFI to long list (8-12 providers)
3. Evaluate capabilities, shortlist to 3-5
4. Issue detailed RFP with volume, SLA, and pricing model
5. Site visits to operating facilities
6. Reference checks with existing clients
7. Financial due diligence (3PL financial health matters)
8. Negotiate contract and SLAs
9. Plan transition (allow 3-6 months)

PRICING MODELS:
- Cost-plus: transparent but no incentive to reduce cost
- Transaction-based: pay per unit/order/pallet handled
- Fixed + variable: base fee plus volume-driven charges
- Gain-sharing: share savings from efficiency improvements
- Best: transaction-based with gain-sharing for improvements

CONTRACT ESSENTIALS:
- Clear SLAs with penalties and bonuses
- Open-book cost transparency
- Volume commitments and flexibility bands (+/- 20%)
- Technology integration requirements
- Continuous improvement targets (2-3% annual productivity)
- Exit provisions and transition assistance
- Data ownership and access
- Insurance and liability limits
```

## Warehouse Operations Optimization

```
WAREHOUSE OPTIMIZATION FRAMEWORK
===================================

SLOTTING OPTIMIZATION:
- A-B-C velocity analysis (pick frequency, not value)
- Place A-items in golden zone (waist to shoulder height)
- Place A-items closest to shipping dock
- Group items frequently ordered together
- Re-slot seasonally or quarterly as velocity changes
- Impact: 15-30% pick productivity improvement

PICKING OPTIMIZATION:
Methods (increasing productivity, increasing complexity):
1. Single order picking (simplest, slowest)
2. Batch picking (multiple orders simultaneously)
3. Zone picking (pickers stay in assigned zones)
4. Wave picking (coordinated release of groups of orders)
5. Cluster picking (pick multiple orders to cart/trolley)
6. Pick-to-light / put-to-light (light-directed, fast)
7. Voice-directed picking (hands-free, moderate speed)
8. Goods-to-person / robotic (highest throughput, highest cost)

Typical Pick Rates:
- Manual paper-based: 60-80 lines/hour
- RF scanning: 80-120 lines/hour
- Voice-directed: 100-150 lines/hour
- Pick-to-light: 200-400 lines/hour
- Goods-to-person/robotic: 300-600 lines/hour

LABOR MANAGEMENT:
- Engineered labor standards (time per task element)
- Labor Management System (LMS) for tracking
- Incentive programs tied to productivity metrics
- Cross-training for flexible deployment
- Seasonal workforce planning and onboarding
- Target: <5% variance between planned and actual labor

WAREHOUSE LAYOUT:
- Receiving -> putaway -> storage -> picking -> packing -> shipping
- Minimize travel distance (typically 50%+ of warehouse labor time)
- Separate fast-moving from slow-moving inventory areas
- Design for flow, not storage capacity alone
- Consider mezzanine or vertical storage for space efficiency
```

## Logistics Technology (TMS, WMS)

```
LOGISTICS TECHNOLOGY STACK
============================

TRANSPORTATION MANAGEMENT SYSTEM (TMS):
Capabilities:
- Route optimization and planning
- Carrier selection and rate management
- Load building and consolidation
- Freight audit and payment
- Track and trace visibility
- Analytics and reporting

Leading Platforms: Oracle TMS, Blue Yonder, Manhattan, SAP TM,
  project44, FourKites (visibility), Uber Freight (digital broker)

ROI: Typically 5-15% freight cost reduction
Implementation: 4-9 months

WAREHOUSE MANAGEMENT SYSTEM (WMS):
Capabilities:
- Receiving and putaway optimization
- Inventory tracking (real-time, location-level)
- Pick, pack, ship execution
- Wave/batch management
- Labor management
- Yard management
- Reporting and analytics

Leading Platforms: Manhattan, Blue Yonder, SAP EWM,
  Oracle WMS, Infor, Korber

ROI: 15-25% labor productivity improvement
Implementation: 6-12 months

EMERGING TECHNOLOGIES:
- Autonomous Mobile Robots (AMRs) for goods-to-person
- Automated storage and retrieval (AS/RS)
- Computer vision for damage detection and counting
- IoT for real-time condition monitoring (temp, shock)
- Drone delivery (limited use cases, regulatory hurdles)
- Digital twins for warehouse simulation
- AI/ML for demand-driven replenishment
```

## Reverse Logistics

```
REVERSE LOGISTICS FRAMEWORK
==============================

REVERSE FLOWS:
- Customer returns (e-commerce: 15-30%, retail: 5-10%)
- Warranty / repair returns
- Product recalls
- End-of-life / recycling
- Reusable packaging / containers

RETURNS PROCESSING:
1. Authorization (RMA process, reason capture)
2. Collection (prepaid labels, drop-off points, pickup)
3. Receiving and inspection (grade condition)
4. Disposition decision:
   - Restock as new (A-grade, sealed, <10% of returns)
   - Refurbish and restock (B-grade, 20-30%)
   - Sell to secondary market (C-grade, 15-25%)
   - Liquidate in bulk (D-grade, 20-30%)
   - Recycle/dispose (E-grade, 10-20%)
5. Value recovery execution
6. Financial settlement (credit, replacement, refund)

COST OF RETURNS:
- Processing cost: $10-25 per return
- Transportation cost: $5-15 per return
- Value depreciation: 20-50% of original price
- Total cost of returns can be 60-75% of original item value

OPTIMIZATION STRATEGIES:
- Reduce return rates (better product info, sizing, quality)
- Gate returns earlier (authorize before shipping back)
- Faster processing (reduce time to resale)
- Improve disposition accuracy (maximize value recovery)
- Optimize reverse transportation (consolidation points)
- Consider 3PL specializing in returns processing
```

## Cross-Docking

```
CROSS-DOCKING MODELS
=======================

Definition: Moving goods from inbound to outbound dock with
minimal or zero storage time.

Types:
1. Pre-distributed: supplier pre-labels for final destination
2. Post-distributed: received and sorted at cross-dock
3. Hybrid: combination of both

Requirements for Success:
- Accurate advance shipment notice (ASN) data
- Synchronized inbound and outbound timing
- Sufficient dock doors (both sides)
- Sorting/staging space (not long-term storage)
- Strong IT systems for coordination
- Reliable carrier schedules

Best For:
- High-velocity, predictable items
- Perishable goods (minimize time in chain)
- Retail store replenishment
- Flow-through distribution

Not Suitable For:
- Slow-moving inventory
- Items requiring kitting or value-added services
- Unpredictable demand patterns
- Small parcel/e-commerce orders (typically)

Impact: Reduces handling costs 30-50%, reduces inventory
by eliminating storage dwell time, improves speed to customer.
```

## Logistics KPIs

```
LOGISTICS PERFORMANCE DASHBOARD
==================================

COST METRICS:
- Total logistics cost as % of revenue (benchmark: 4-8%)
- Transportation cost per unit shipped
- Warehouse cost per unit handled
- Cost per order fulfilled
- Freight cost per mile / per kg
- Cost-to-serve by customer segment

SERVICE METRICS:
- On-time delivery rate (target: 95-99%)
- On-time and in-full (OTIF) rate (target: 93-97%)
- Order accuracy rate (target: 99.5%+)
- Perfect order rate (on-time + in-full + undamaged + correct docs)
- Order cycle time (order to delivery)
- Fill rate (% of demand fulfilled from available stock)

PRODUCTIVITY METRICS:
- Warehouse units handled per labor hour
- Lines picked per hour
- Truck utilization (weight and cube)
- Dock-to-stock time (receiving to available)
- Orders per FTE per day
- Warehouse space utilization (%)

INVENTORY METRICS:
- Inventory turns
- Days of supply
- Inventory accuracy (target: 99%+ at location level)
- Shrinkage rate
- Slow-moving and obsolete inventory (SLOB) as % of total

SUSTAINABILITY METRICS:
- Carbon emissions per unit shipped (CO2e/unit)
- Empty miles percentage
- Packaging waste per shipment
- Renewable energy usage in warehouses
```

## Core Philosophy

Logistics is where supply chain strategy meets physical reality. Goods must be moved, stored, picked, packed, and delivered — and every one of these activities costs money, takes time, and introduces the possibility of error. The best logistics operations achieve the seemingly contradictory goals of faster delivery, lower cost, and higher reliability simultaneously — not by working harder but by designing smarter networks, leveraging data for decisions, and building execution capabilities that flex with demand rather than breaking under it.

Every logistics decision involves trade-offs between cost, speed, and reliability, and the strategic objective is not to choose a point on the existing trade-off frontier but to shift the frontier itself. Network redesign, mode optimization, warehouse automation, and routing technology all serve this purpose: expanding the set of achievable combinations so that yesterday's impossible (fast AND cheap AND reliable) becomes tomorrow's standard operating practice. Organizations that treat logistics as a pure cost-minimization exercise miss this strategic potential and compete on a trade-off frontier their more sophisticated competitors have already moved beyond.

The highest-leverage decision in logistics is network design — where to locate facilities and how to allocate demand across them. Getting the network structure right can reduce total logistics costs by 10-25% while simultaneously improving service levels. Yet most organizations treat their network as fixed infrastructure and focus optimization efforts on the lower-leverage activities of carrier negotiation and warehouse productivity. Periodically questioning whether your network structure still serves your current and future demand geography is essential, because a network designed for the demand of five years ago may be systematically suboptimal for the demand of today.

## Anti-Patterns

- **Cheapest 3PL Wins**: Selecting third-party logistics providers primarily on price without adequate evaluation of service quality, technology capability, and operational reliability. The cheapest provider that cannot meet service requirements will cost far more in lost sales, customer dissatisfaction, and recovery efforts than a moderately more expensive partner that delivers consistently.

- **Siloed Transportation and Warehouse Optimization**: Optimizing freight costs and warehouse operations independently without considering their interdependencies. Cheaper freight often means more complex warehouse receiving; consolidated shipments reduce per-unit transport cost but may require additional warehouse handling. Total logistics cost optimization requires viewing transportation and warehousing as a connected system.

- **Network Design Based on Today's Demand**: Redesigning the logistics network to perfectly serve current demand patterns without modeling where demand is going over the next 3-5 years. Networks are expensive to change and take 12-18 months to reconfigure. A network optimized for today is already suboptimal by the time it is fully implemented if demand geography is shifting.

- **Returns as Afterthought**: Treating reverse logistics as an operational nuisance rather than a strategic process that deserves the same analytical attention as forward logistics. With e-commerce return rates of 15-30%, returns are a major P&L driver. The speed, cost, and accuracy of returns processing directly impact value recovery, customer satisfaction, and inventory availability.

- **Ignoring Dimensional Weight**: Overlooking the impact of packaging design on freight costs. Many organizations overpay shipping by 10-20% because products are packaged in oversized boxes that trigger dimensional weight pricing. Packaging right-sizing is one of the simplest, highest-ROI logistics optimizations available and is consistently underinvested.

## What NOT To Do

- Do not redesign the logistics network based on current demand patterns alone. Model for where demand is going over the next 3-5 years, not where it is today.
- Do not select a 3PL primarily on price. The cheapest provider that cannot meet your service requirements will cost you far more in lost sales and customer dissatisfaction.
- Do not implement a TMS or WMS without first standardizing processes. Technology amplifies whatever state your operations are in -- good or bad.
- Do not ignore dimensional weight in freight optimization. Many companies overpay shipping costs by 10-20% because of poorly designed packaging.
- Do not treat reverse logistics as an afterthought. With e-commerce return rates of 15-30%, returns are a major P&L driver that demands strategic attention.
- Do not optimize transportation and warehouse operations in silos. They are interconnected -- cheaper freight may mean more handling at the warehouse, and vice versa.
- Do not assume more warehouses always mean better service. Each additional facility adds fixed cost, splits inventory, and reduces scale economies. Find the optimal number through modeling.
- Do not sign long-term 3PL contracts (7+ years) without clear performance milestones, continuous improvement commitments, and realistic exit provisions.
- Do not neglect carrier relationship management. Treating carriers as interchangeable commodities will get you bottom-of-the-list priority when capacity is tight.
- Do not rely on averages for logistics planning. Variability (in demand, transit times, and processing rates) is what kills logistics performance. Plan for the distribution, not the mean.
## Evidence, version and decision checks

- Establish the process boundary, demand volume, measurement baseline and constraints before claiming efficiency gains.
- Make quality, safety, capacity, labor, variability and customer-impact tradeoffs explicit.
- Pilot proposed improvements and compare before/after results; do not invent benefits or treat targets as validated forecasts.

## Review & Production Validation (2026-10-31)

- **Domain control (Supply chain and inventory):** Reconcile quantities, lead times, units, service levels, stockout cost and supplier constraints.
- **Independent validation:** Stress-test demand variation, supplier disruption and cash tied up in inventory.
- **Time-sensitive details:** Treat fixed rates, thresholds, package versions, protocols and jurisdiction-specific rules in the examples above as illustrative unless reconfirmed against primary documentation.
- **Before relying on the result:** State inputs and assumptions; verify calculations and edge cases, and identify what has not been executed or tested.
