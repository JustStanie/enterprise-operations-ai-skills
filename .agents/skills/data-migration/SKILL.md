---
name: data-migration
description: >-
  Use for database and enterprise data migration planning, source-to-target
  mapping, CDC replication, phased cutover, reconciliation, recovery
  strategies, data quality and legacy decommissioning.
---

# Data Migration

Act as a rigorous data migration advisor. Apply the domain methods below to the user's real constraints and evidence. Do not imply personal professional credentials, former employment, or completed engagements.

## Philosophy

Data migration is one of the highest-risk activities in data engineering. Unlike new system development, migration operates on live data that the business depends on today. A failed migration can cause data loss, downtime, and broken trust that takes months to recover from. The key to successful migration is obsessive planning, incremental execution, continuous validation, and always maintaining the ability to roll back.

Core principles:

1. **Never migrate without a recovery plan.** Document rollback conditions and the point of no return. Some cutovers cannot safely reverse once writes diverge; design forward recovery, reconciliation and compensating actions where necessary.
2. **Validate continuously, not just at the end.** Data validation should run throughout the migration, comparing source and target at every stage. Discovering discrepancies after cutover is too late.
3. **Migrate incrementally, not atomically.** Big-bang migrations maximize risk. Incremental approaches (dual-write, gradual traffic shifting) allow course correction during the migration.
4. **The old system is the source of truth until it is not.** During migration, the legacy system remains authoritative. Only after comprehensive validation does the new system take over.
5. **Decommissioning is part of the migration.** A migration is not complete until the old system is turned off. Indefinitely running parallel systems doubles operational cost and creates drift.

## Migration Strategy Selection

### Lift and Shift

- **Move data as-is to the new platform.** Minimal transformation during migration. Optimize later.
- **Fastest migration approach.** Reduces migration complexity and timeline.
- **Best for:** Urgent migrations (data center exit, contract expiration), when the primary goal is platform change rather than architecture improvement.
- **Limitations.** Carries technical debt to the new platform. May not leverage new platform capabilities.

### Re-Architecture

- **Redesign data models and pipelines during migration.** Transform schemas, change storage formats, and adopt new patterns.
- **Higher risk but higher reward.** Produces a better end state but increases migration complexity and timeline.
- **Best for:** Migrations with sufficient timeline, when legacy architecture is fundamentally incompatible with the target platform.
- **Approach.** Build the new architecture alongside the old, migrate data through transformation pipelines, validate, and cut over.

### Hybrid (Strangler Fig Pattern)

- **Incrementally replace legacy components.** Route new functionality to the new system while the old system continues serving existing functionality.
- **Gradual risk reduction.** Each component migrates independently, reducing the blast radius of any single failure.
- **Best for:** Complex systems where full re-architecture is too risky and lift-and-shift is insufficient.

## Low-Downtime Migration Patterns

### Dual-Write Architecture

- **Write to both old and new systems simultaneously.** All write operations target both systems during the migration period.
- **Synchronous vs. asynchronous dual-write.** A synchronous application-level call does not by itself guarantee atomic writes across two independent systems. Use transactionally safe patterns where supported, or an outbox/CDC with idempotency, retries, reconciliation and clear ownership.
- **Conflict resolution.** Define which system is authoritative during the dual-write period. Typically the legacy system until validation confirms parity.
- **Duration management.** Dual-write periods should be time-bounded. Indefinite dual-write creates operational complexity and consistency risks.

### Change Data Capture Migration

- **Initial bulk load plus ongoing CDC.** Perform a full data copy, then use CDC to replicate ongoing changes until cutover.
- **Lag monitoring.** Track the replication lag between source and target. Cutover only when lag is within acceptable bounds.
- **Schema mapping.** Transform source schemas to target schemas in the CDC pipeline. Handle differences in data types, naming, and structure.

### Blue-Green Migration

- **Build the complete new environment alongside the old.** Fully populate and validate the new system before any traffic shift.
- **Cutover with defined recovery conditions.** Switching traffic can be fast, but reversal requires write consistency and a tested rollback window; otherwise use a forward-recovery plan.
- **Requires validated consistency.** Define the tolerated replication lag and reconciliation gates at cutover. Do not promise identical snapshots without a suitable consistency mechanism.

## Shadow Traffic and Validation

### Shadow Traffic

- **Mirror production reads to the new system.** Send a copy of production queries to the new system and compare results without affecting users.
- **Capture and compare.** Log response times, result sets, and error rates from both systems for comparison.
- **Identify discrepancies before cutover.** Differences in query results reveal data or schema migration issues.
- **Performance benchmarking.** Shadow traffic reveals the new system's performance characteristics under production load patterns.

### Data Validation

- **Row count reconciliation.** Compare record counts between source and target by table, partition, and time range.
- **Aggregate validation.** Compare sums, averages, and distributions of numeric columns between source and target.
- **Sample-based record comparison.** Select random samples and compare field-by-field between source and target.
- **Referential integrity checks.** Verify that foreign key relationships in the source are maintained in the target.
- **Automated validation pipelines.** Build validation as an automated pipeline that runs continuously during migration, not as a manual spot check.

## Cutover Planning

### Pre-Cutover Checklist

- **Data validation complete.** All validation checks pass with zero or accepted-threshold discrepancies.
- **Performance validated.** Shadow traffic confirms the new system meets latency and throughput requirements.
- **Rollback tested.** The rollback procedure has been executed in a staging environment and works correctly.
- **Stakeholder communication.** All affected teams are aware of the cutover timeline and escalation procedures.
- **Monitoring in place.** Alerts configured for data quality, performance, and error rates on the new system.

### Cutover Execution

- **Choose a low-traffic window.** Schedule cutover during the period of minimum user activity.
- **Freeze writes during final sync.** Briefly pause writes to ensure the final data sync completes without new changes.
- **Verify sync completion.** Confirm replication lag is zero and all data matches before switching traffic.
- **Traffic shift.** Update DNS, load balancers, connection strings, or application configuration to point to the new system.
- **Immediate validation.** Run automated validation checks immediately after cutover. Monitor error rates and query performance closely.

### Post-Cutover

- **Hypercare period.** Maintain elevated monitoring and on-call staffing for 1-2 weeks after cutover.
- **Parallel monitoring.** Keep the old system running read-only for comparison and potential rollback during hypercare.
- **Issue tracking.** Log and prioritize all post-cutover issues. Distinguish migration-related issues from pre-existing problems.

## Rollback Strategies

### Data-Level Rollback

- **Maintain a documented recovery source.** A read-only frozen legacy copy can support comparison, but it cannot safely accept rollback traffic after new-system writes without a tested reverse-sync or reconciliation strategy.
- **Reverse replication (only when designed and tested).** If reversal is required after cutover, evaluate reverse CDC, conflict handling, schema compatibility, cutover ownership and recovery limits; never assume it is immediately safe.
- **Point-in-time recovery.** Use database snapshots or backup restore to return to a known-good state.

### Application-Level Rollback

- **Feature flags.** Control which system the application reads from and writes to via feature flags. Rollback is a flag change, not a deployment.
- **Connection string management.** Centralize data source configuration so switching between old and new systems requires minimal changes.
- **Rollback rehearsal.** Practice the rollback procedure before cutover. Untested rollback plans fail when needed.

## Cloud-to-Cloud Migration

### Data Transfer

- **Network transfer for small datasets.** Direct transfer over the internet or VPN for datasets under 10 TB.
- **Physical transfer for large datasets.** AWS Snowball, Azure Data Box, or Google Transfer Appliance for datasets over 10 TB where network transfer is impractical.
- **Ongoing replication.** After initial transfer, use cross-cloud replication tools or CDC to keep systems synchronized until cutover.

### Service Mapping

- **Map source services to target equivalents.** S3 to GCS, Redshift to BigQuery, RDS to Cloud SQL. Identify gaps where direct equivalents do not exist.
- **API and SDK differences.** Cloud provider APIs differ significantly. Budget time for application code changes beyond just data migration.
- **Identity and access management.** Migrate access policies and roles to the target cloud's IAM model. This is often more complex than data migration itself.

## Legacy System Decommissioning

### Pre-Decommissioning

- **Dependency inventory.** Identify every system, pipeline, report, and process that reads from or writes to the legacy system.
- **Migration completeness verification.** Confirm every identified dependency has been migrated or explicitly decommissioned.
- **Data archival.** Archive historical data from the legacy system according to retention policies before decommissioning.

### Decommissioning Process

- **Read-only period.** Set the legacy system to read-only for a defined period (2-4 weeks) to surface any undiscovered write dependencies.
- **DNS tombstone.** Replace the legacy system endpoint with a tombstone that logs access attempts and returns informative errors.
- **Staged shutdown.** Decommission components in stages: first writes, then reads, then the system itself. Monitor for errors at each stage.
- **Cost tracking.** Document the cost savings from decommissioning to justify the migration investment.

### Post-Decommissioning

- **Monitor for residual access.** Track any systems still attempting to connect to the decommissioned system for 30-90 days.
- **Archive documentation.** Preserve documentation about the legacy system and migration decisions for institutional knowledge.
- **Celebrate completion.** Acknowledge the team's work. Migrations are grueling, and completion deserves recognition.

## Anti-Patterns -- What NOT To Do

- **Do not attempt big-bang migrations for critical systems.** Migrating everything at once maximizes risk and eliminates the ability to course-correct. Migrate incrementally.
- **Do not skip rollback planning.** Hoping the migration succeeds is not a strategy. Plan, implement, and test rollback procedures before starting.
- **Do not validate only at the end.** Discovering data discrepancies after cutover creates crisis conditions. Validate continuously throughout the migration.
- **Do not run parallel systems indefinitely.** Dual-running old and new systems is expensive and creates drift. Set a firm decommissioning deadline.
- **Do not underestimate legacy system dependencies.** Undiscovered dependencies are the primary cause of migration failures. Invest heavily in dependency discovery.
- **Do not migrate without performance testing.** The new system may behave differently under production load. Shadow traffic testing reveals issues before they affect users.
- **Do not treat decommissioning as optional.** A migration without decommissioning is just adding a new system. Budget and plan for legacy shutdown from the start.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.
