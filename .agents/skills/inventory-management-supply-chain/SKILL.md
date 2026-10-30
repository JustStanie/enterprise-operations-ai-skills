---
name: inventory-management-supply-chain
description: >-
  Use when the user needs inventory management in supply chain: Classify items by value,
  variability, lead time and criticality. Select periodic or continuous review policies by SKU.
---

# Inventory Management Supply Chain

## Inventory Management

## Core Philosophy
Inventory management is the discipline of maintaining the right quantity of the
right products in the right locations at the right time. Too much inventory ties
up capital and risks obsolescence; too little creates stockouts that lose sales
and damage customer relationships. The optimal inventory strategy balances service
levels against carrying costs, informed by demand patterns, lead times, and
supply variability.

## Key Techniques
- **ABC Analysis**: Classify inventory by value contribution. A items (top 20%
  by value) get tight control and frequent review; C items (bottom 50%) get
  simplified management with larger safety stocks.
- **Economic Order Quantity (EOQ)**: Calculate the order size that minimizes the
  total of ordering costs and holding costs, assuming stable demand.
- **Safety Stock Calculation**: Buffer inventory sized to cover demand variability
  and lead time variability at a target service level.
- **Reorder Point Systems**: Trigger replenishment when inventory drops below a
  calculated threshold based on lead time demand plus safety stock.
- **Just-in-Time (JIT)**: Minimize inventory by synchronizing production and
  delivery closely with demand, reducing waste and carrying costs.
- **Cycle Counting**: Continuously count subsets of inventory rather than
  conducting disruptive full physical counts, maintaining accuracy year-round.

## Best Practices
- Track inventory accuracy as a metric. Decision quality depends on data quality.
- Review and adjust safety stock levels seasonally or when demand patterns change.
- Use demand forecasting to drive inventory planning rather than relying solely
  on historical averages.
- Implement first-in-first-out (FIFO) for perishable or time-sensitive goods.
- Automate reorder triggers to prevent human lag in replenishment decisions.
- Segment inventory strategy by product characteristics. High-value, slow-moving
  items need different policies than low-value, fast-moving ones.
- Monitor inventory turnover ratio and days of supply as key health metrics.

## Common Patterns
- **Vendor-Managed Inventory (VMI)**: Supplier monitors stock levels and makes
  replenishment decisions, reducing buyer's planning burden and improving
  supplier visibility.
- **Consignment Inventory**: Supplier retains ownership until the buyer uses or
  sells the inventory, reducing the buyer's capital commitment.
- **Multi-Echelon Optimization**: Optimize inventory across multiple warehouse
  tiers simultaneously rather than independently at each location.
- **Postponement Strategy**: Hold inventory in generic form and customize or
  configure at the last possible moment to reduce variety-driven overstock.

## Anti-Patterns
- Ordering in large batches to get volume discounts without accounting for the
  carrying cost of excess inventory.
- Using a single inventory policy for all SKUs regardless of demand patterns,
  value, and criticality.
- Measuring only stockout rates without tracking overstock and obsolescence costs.
- Relying on manual counts and spreadsheets for inventory tracking in operations
  of any significant scale.
- Ignoring lead time variability in safety stock calculations, leading to
  chronic shortages when suppliers deliver late.
- Hoarding inventory as insurance rather than addressing the root causes of
  supply unreliability.
## Working calculation and decision checks

- **Inventory position:** on-hand + confirmed on-order − backorders (adjust definitions for reservations and transfers).
- **Basic reorder point:** expected demand during replenishment lead time + safety stock. State the demand/lead-time distribution used to estimate safety stock.
- **Working-capital exposure:** units held × unit inventory cost; distinguish cost of goods from selling price.
- **Service objective:** differentiate cycle service level from fill rate; do not substitute one for the other.
- **Serialized assets:** reserve or transfer a specific serial number when the process requires item-level identification, rather than reserving all stock of the SKU.

## Evidence, version and decision checks

- Separate demand assumptions, lead times, variability, service levels and inventory/capacity constraints.
- Compare landed cost, reliability, emissions, stockout exposure and working capital instead of optimizing one KPI in isolation.
- Validate formulas against their assumptions (independence, distributions, stable lead time) and use sensitivity or scenarios.
