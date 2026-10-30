---
name: logistics-optimization
description: >-
  Use when the user needs logistics optimization in supply chain: Build shipment, lane, cost
  and capacity datasets. Identify network and consolidation constraints.
---

# Logistics Optimization

## Core Philosophy
Logistics optimization seeks the best tradeoff between transportation cost, speed,
and reliability across the distribution network. It encompasses mode selection,
route planning, carrier management, and network design. The goal is to deliver the
right product to the right place at the right time at the lowest total cost,
recognizing that the cheapest shipment is not always the best if it arrives late
or damaged.

## Key Techniques
- **Network Design**: Determine the optimal number, location, and role of warehouses
  and distribution centers to minimize total logistics cost while meeting service
  level requirements.
- **Route Optimization**: Use algorithms (vehicle routing problem solvers) to
  determine the most efficient routes for delivery vehicles considering capacity,
  time windows, and distance.
- **Mode Selection**: Choose among truckload, less-than-truckload, rail, air,
  ocean, and intermodal based on cost, speed, volume, and commodity characteristics.
- **Consolidation**: Combine multiple small shipments into larger loads to reduce
  per-unit transportation costs through cross-docking or merge-in-transit.
- **Carrier Scorecards**: Evaluate carriers on on-time delivery, damage rates,
  cost, and responsiveness to inform routing decisions and contract negotiations.
- **Load Optimization**: Maximize trailer and container utilization through
  intelligent load planning that accounts for weight, volume, and stacking rules.

## Best Practices
- Measure total landed cost, not just freight rates. Include handling, insurance,
  duties, and inventory carrying costs.
- Build carrier relationships with multiple providers to ensure capacity during
  peak periods and avoid single-source dependency.
- Use TMS (Transportation Management Systems) for visibility, optimization, and
  automated carrier selection.
- Plan shipments proactively rather than reactively. Expedited shipping is
  almost always a symptom of poor planning.
- Track key metrics: cost per unit shipped, on-time delivery rate, claims ratio,
  and transit time variability.
- Design the network for the 80th percentile demand, not the peak, and use
  flexible capacity for surges.

## Common Patterns
- **Hub-and-Spoke Distribution**: Central hubs consolidate freight and redistribute
  to regional spokes, balancing efficiency with coverage.
- **Zone Skipping**: Ship full truckloads past intermediate carrier zones to reduce
  per-package costs for high-volume lanes.
- **Pool Distribution**: Ship consolidated loads to a regional pool point and break
  them into local deliveries, combining linehaul efficiency with local service.
- **Milk Run**: Scheduled collection routes that pick up from multiple suppliers
  on a single trip, reducing inbound transportation costs.

## Anti-Patterns
- Optimizing transportation cost in isolation from inventory cost. Cheaper, slower
  shipping may require more safety stock that costs more than the freight savings.
- Not renegotiating carrier contracts regularly. Market rates change and loyal
  customers often overpay.
- Using expedited shipping routinely rather than fixing the planning failures
  that cause the need for it.
- Ignoring backhaul opportunities. Empty return trips are wasted capacity.
- Over-centralizing distribution to minimize warehouse costs while inflating
  transportation costs and delivery times.
## Optimization formulation checklist

- Define decision variables (shipment quantity, assigned vehicle, route sequence or facility choice) and the time horizon.
- Choose an objective (landed cost, lead time, emissions or weighted multi-objective score); state the units and tradeoffs.
- Enforce capacities, time windows, service requirements, vehicle constraints, geographic restrictions and driver/operating rules.
- Compare the optimized solution to an operationally feasible baseline, including loading, routing and disruption scenarios.
- For large instances, report solver gap and run time; label heuristic results as approximations, not proven global optima.

## Evidence, version and decision checks

- Separate demand assumptions, lead times, variability, service levels and inventory/capacity constraints.
- Compare landed cost, reliability, emissions, stockout exposure and working capital instead of optimizing one KPI in isolation.
- Validate formulas against their assumptions (independence, distributions, stable lead time) and use sensitivity or scenarios.
