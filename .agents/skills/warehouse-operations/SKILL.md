---
name: warehouse-operations
description: >-
  Use when the user needs warehouse operations in supply chain: Profile SKU velocity, order
  patterns and storage constraints. Evaluate layout, slotting and picking paths.
---

# Warehouse Operations

## Core Philosophy
Warehouse operations transform storage facilities into fulfillment engines that
receive, store, pick, pack, and ship products accurately and efficiently. The
warehouse is where supply chain strategy meets physical execution. Every extra
step, every unnecessary movement, and every misplaced item adds cost and delay.
Lean warehouse operations minimize waste while maximizing throughput and accuracy.

## Key Techniques
- **Slotting Optimization**: Place fast-moving items in the most accessible
  locations to minimize pick path distances. Re-slot periodically as demand
  patterns change.
- **Wave Planning**: Group orders into waves that optimize picking efficiency,
  balancing carrier cutoff times with labor utilization.
- **Zone Picking**: Divide the warehouse into zones with dedicated pickers,
  reducing travel time and enabling specialization.
- **Put-to-Light/Pick-to-Light**: Use light-directed systems to guide operators
  to exact locations, reducing errors and training time.
- **Cross-Docking**: Move inbound goods directly to outbound shipping without
  storage, reducing handling and inventory carrying costs.
- **Labor Management Systems**: Track individual and team productivity against
  engineered standards to identify improvement opportunities and balance workloads.

## Best Practices
- Measure pick accuracy, order cycle time, and cost per order as primary KPIs.
- Maintain warehouse cleanliness and organization. A disorganized warehouse is
  a slow, error-prone warehouse.
- Train workers on multiple functions to provide flexibility during demand spikes.
- Implement barcode or RFID scanning at every movement point to maintain inventory
  accuracy above 99%.
- Design receiving and shipping docks to avoid congestion during peak hours.
- Use vertical space effectively with appropriate racking systems for product
  characteristics.
- Conduct regular safety audits. Warehouse injuries are costly and preventable.

## Common Patterns
- **ABC Slotting**: A items in prime pick locations (golden zone, closest to
  packing), B items in secondary locations, C items in bulk storage areas.
- **Batch Picking**: Pick multiple orders simultaneously and sort them later,
  reducing total travel distance per order.
- **Goods-to-Person**: Automated systems bring inventory to stationary pickers
  rather than sending pickers to inventory, dramatically reducing labor.
- **Seasonal Flex Space**: Use temporary storage, additional shifts, or overflow
  facilities to handle peak season volumes without year-round overcapacity.

## Anti-Patterns
- Storing inventory wherever there is empty space rather than using systematic
  slotting, creating chaotic pick paths and lost items.
- Under-investing in WMS technology and relying on paper-based processes that
  cannot scale or maintain accuracy.
- Designing warehouse layout once and never adjusting as product mix and volume
  change.
- Prioritizing speed over accuracy. Shipping errors cost far more to correct
  than the time saved by rushing.
- Neglecting ergonomics. Repetitive strain injuries reduce workforce productivity
  and increase costs over time.
- Running the warehouse at maximum capacity, leaving no room to absorb volume
  spikes or operational disruptions.
## Warehouse execution checks

- Map inbound → putaway → storage → replenishment → picking → packing → dispatch, including exception handling and returns.
- Reconcile WMS available quantity with physical counts and reservations at SKU, location, lot and serial-number level when applicable.
- Calculate pick accuracy and picks per paid labor hour from explicitly defined numerator and denominator.
- Test slotting proposals against travel time, replenishment work, safety rules, peak congestion and seasonal SKU velocity.

## Evidence, version and decision checks

- Separate demand assumptions, lead times, variability, service levels and inventory/capacity constraints.
- Compare landed cost, reliability, emissions, stockout exposure and working capital instead of optimizing one KPI in isolation.
- Validate formulas against their assumptions (independence, distributions, stable lead time) and use sensitivity or scenarios.
