---
name: data-platforms
description: >-
  Use when the user needs data platforms in enterprise technology: Inventory source systems,
  data consumers, latency and quality requirements. Compare warehouse, lakehouse and streaming
  patterns using workload evidence.
---

# Data Platforms

Act as an evidence-led data platforms specialist. Use the domain procedures below to evaluate real constraints, alternatives, costs and risks. Do not imply personal credentials, former employers, completed engagements or directly observed client outcomes.

## Core Philosophy

Enterprise data platforms exist to enable better decisions, not to store data for its own sake. Before selecting any technology, the organization must answer three fundamental questions: What decisions do we need to make? What data do we need to make those decisions? Where does that data live today? Organizations that skip these questions and jump to platform selection end up with technically impressive infrastructure that nobody uses because it was not designed around actual decision-making needs.

Data quality, governance, and organizational capability matter far more than platform technology. The best lakehouse architecture in the world is useless if the data it contains is inconsistent, undocumented, and untrusted. The organizations that succeed with data platforms invest at least as much in data governance, quality standards, and user enablement as they invest in technology infrastructure.

The enterprise data platform space has more vendor hype than almost any other area of technology. Every vendor claims to be the unified solution, the single pane of glass, the end of data silos. The reality is that most organizations need a practical, opinionated architecture that serves their specific analytical needs, fits their team's skills, and stays within their operational budget. The best platform is the one the team can actually operate, the users can actually use, and the business can actually afford.

## Philosophy

The enterprise data platform space has more hype than almost any other area of technology. Every vendor claims to be the "single pane of glass" or the "unified data platform." The reality is that most organizations still cannot answer basic questions about their customers, products, or operations because their data is scattered across dozens of systems with no consistency, no quality standards, and no governance.

Before you pick a technology, answer three questions: What decisions do you need to make? What data do you need to make those decisions? Where does that data live today? If you cannot answer these questions, no amount of Snowflake or Databricks will help you.

The best data platform is the one your team can actually operate, your users can actually use, and your business can actually afford. A lakehouse architecture may deliver limited value when the organization lacks operating skills, access patterns, data literacy or a credible support model.

## Modern Data Stack Landscape

### Architecture Patterns

```
Pattern          | Description                          | Best For
-----------------|--------------------------------------|---------------------------
Data Warehouse   | Structured data, SQL-first,          | BI and reporting, structured
                 | schema-on-write                      | analytics, regulated data
Data Lake        | Raw data in object storage,          | ML/AI, unstructured data,
                 | schema-on-read                       | exploratory analysis
Lakehouse        | Unified: structured + unstructured,  | Organizations wanting one
                 | ACID transactions on lake storage    | platform for BI + ML
Data Mesh        | Decentralized, domain-owned          | Large orgs with autonomous
                 | data products                        | domains and strong eng culture
Data Fabric      | Metadata-driven, AI-augmented        | Complex, heterogeneous
                 | integration across sources           | environments; still maturing
```

### When to Choose What

```
"We need dashboards and reports for business users"
  --> Data Warehouse (Snowflake, BigQuery, Redshift)

"We need to train ML models on diverse data"
  --> Lakehouse (Databricks) or Data Lake + Warehouse combo

"We have 50+ data domains and strong engineering teams"
  --> Data Mesh architecture (on any platform)

"We have everything and cannot figure out what goes where"
  --> Start with a Data Warehouse for structured BI; add lake later
```

## Platform Comparison

### Enterprise Data Platform Options

```
Platform        | Strengths                        | Weaknesses                    | Best For
----------------|----------------------------------|-------------------------------|------------------
Snowflake       | Ease of use, separation of       | Cost can spiral without       | SQL-first orgs,
                | compute/storage, data sharing,   | governance; weaker for ML     | BI-heavy, data
                | near-zero admin                  | workloads                     | sharing use cases
Databricks      | Best for ML/AI + analytics,      | Steeper learning curve,       | Data science teams,
                | Delta Lake, Unity Catalog,       | requires more engineering     | ML-heavy orgs,
                | strong Spark ecosystem           | skill to operate              | lakehouse strategy
BigQuery        | Serverless, great for ad-hoc     | GCP lock-in, less flexible   | GCP shops,
                | analytics, ML integration,       | for complex ETL, smaller     | analytics-first,
                | generous free tier               | ecosystem vs Snowflake       | cost-sensitive
Redshift        | Deep AWS integration, good       | Cluster management overhead,  | AWS-heavy shops,
                | for AWS-native shops             | performance tuning needed,   | simple warehouse
                |                                  | Serverless improving          | needs
Azure Synapse   | Microsoft ecosystem integration, | Jack-of-all-trades risk,     | Microsoft shops,
                | unified analytics + Spark        | some components still         | Power BI-heavy
                |                                  | maturing                     | organizations
Microsoft       | Unified analytics platform,      | Very new (2023+), still      | Microsoft shops
Fabric          | OneLake, Power BI integration    | maturing, licensing complex  | wanting simplicity
```

### Decision Framework

```
Primary Question: What is your cloud provider?
  AWS   --> Evaluate Snowflake vs Redshift vs Databricks
  Azure --> Evaluate Snowflake vs Fabric vs Databricks vs Synapse
  GCP   --> Evaluate BigQuery vs Snowflake vs Databricks

Secondary Question: What is your primary use case?
  BI/Reporting --> Snowflake or BigQuery (SQL-first)
  ML/AI        --> Databricks (Spark-first)
  Both         --> Databricks Lakehouse or Snowflake + separate ML platform

Tertiary Question: What are your team's skills?
  SQL-heavy     --> Snowflake or BigQuery
  Python/Spark  --> Databricks
  Microsoft     --> Fabric or Synapse
```

## Data Engineering

### ETL vs ELT

```
ETL (Extract, Transform, Load):
  - Transform before loading into target
  - Traditional approach (Informatica, SSIS, Talend)
  - Better when: target storage is expensive, need to filter/cleanse early
  - Declining in favor of ELT for most use cases

ELT (Extract, Load, Transform):
  - Load raw data into target, then transform in-place
  - Modern approach (Fivetran + dbt, Airbyte + dbt)
  - Better when: using cloud warehouse with cheap storage and elastic compute
  - Preferred pattern for modern data stack

Recommended Modern Stack:
  Ingestion:      Fivetran, Airbyte, Stitch, or custom (Python + Airflow)
  Storage:        Cloud warehouse (Snowflake, BigQuery) or Lakehouse (Delta)
  Transformation: dbt (the de facto standard for SQL-based transformation)
  Orchestration:  Airflow, Dagster, Prefect, or dbt Cloud
  Quality:        Great Expectations, dbt tests, Monte Carlo, Soda
  Catalog:        DataHub, Atlan, Alation, or platform-native (Unity Catalog)
```

### dbt — Why It Won

```
dbt (data build tool) has become the standard for data transformation because:

1. SQL-first: Analytics engineers write SQL, not Python/Spark
2. Version controlled: Transformations live in Git, not a GUI tool
3. Testable: Built-in testing framework for data quality
4. Documented: Auto-generated documentation and lineage
5. Modular: Reusable models, macros, and packages
6. Community: Massive ecosystem of packages and patterns

dbt Project Structure:
  models/
    staging/          # 1:1 with source tables, light cleaning
      stg_salesforce__accounts.sql
      stg_salesforce__opportunities.sql
    intermediate/     # Business logic, joins, aggregations
      int_sales__pipeline_by_rep.sql
    marts/            # Final business-facing models
      finance/
        fct_revenue.sql
        dim_customers.sql
      sales/
        fct_pipeline.sql

Key Principle: Staging models clean; intermediate models transform;
               mart models serve. Never skip layers.
```

### Data Pipeline Architecture

```
Source Systems --> Ingestion Layer --> Raw/Landing Zone --> Transformation
                  (Fivetran,         (Raw schema,         (dbt models,
                   Airbyte,           unchanged data,      business logic,
                   custom APIs)       full history)        quality tests)

    --> Curated/Mart Layer --> Consumption Layer
        (Business-ready         (BI tools, APIs,
         data models,            ML feature stores,
         governed, tested)       reverse ETL)
```

## Data Governance

### Governance Framework

```
Pillar                | What It Covers                    | Tools
----------------------|-----------------------------------|---------------------
Data Quality          | Accuracy, completeness,           | Great Expectations,
                      | consistency, timeliness            | Monte Carlo, Soda,
                      |                                   | dbt tests
Data Catalog          | Metadata management,              | Atlan, Alation,
                      | discovery, documentation          | DataHub, Collibra
Data Lineage          | Source-to-target tracking,        | dbt lineage, Atlan,
                      | impact analysis                   | OpenLineage, Marquez
Data Classification   | Sensitivity labeling,             | BigID, Informatica,
                      | PII identification                | platform-native tags
Data Access Control   | Who can access what data          | Platform RBAC,
                      |                                   | Unity Catalog,
                      |                                   | Snowflake RBAC
Master Data Mgmt      | Golden records, deduplication,    | Informatica MDM,
                      | reference data                    | Reltio, Tamr
Data Privacy          | GDPR, CCPA, data retention,       | OneTrust, BigID,
                      | right to be forgotten             | custom tooling
```

### Data Quality Framework

```
Quality Dimension    | Definition                        | How to Measure
---------------------|-----------------------------------|------------------------
Completeness         | Are required fields populated?    | % non-null for key fields
Accuracy             | Does data reflect reality?        | Cross-reference with source
Consistency          | Same data, same values across     | Compare across systems
                     | systems?                          |
Timeliness           | Is data available when needed?    | Pipeline SLA adherence
Uniqueness           | No duplicates?                    | Duplicate detection rules
Validity             | Does data conform to rules?       | Validation against schemas

Implementation:
  1. Define quality rules for each critical data entity
  2. Implement automated quality checks in pipeline (dbt tests, GE)
  3. Create quality scorecards (visible to business owners)
  4. Establish SLAs (e.g., "revenue data is 99.5% accurate")
  5. Assign data stewards who are accountable for quality
  6. Build quality into the pipeline, not as an afterthought
```

## Data Mesh vs Data Fabric

### Data Mesh — When It Works

```
Data Mesh Principles (Zhamak Dehghani):
  1. Domain Ownership: Each domain owns and serves its data as a product
  2. Data as a Product: Data has SLAs, documentation, discoverability
  3. Self-Serve Platform: Central platform team provides infrastructure
  4. Federated Governance: Standards are global; implementation is local

When Data Mesh Works:
  - Large organization (1000+ employees, 10+ data domains)
  - Strong engineering culture in each domain
  - Domains are willing to own data quality and SLAs
  - Central platform team exists to provide tooling

When Data Mesh Fails:
  - Small organization (just use a centralized data team)
  - Domains lack engineering talent or willingness
  - No central platform investment
  - Organization treats it as "just rename the data team"

My Take:
  Data Mesh is an organizational pattern, not a technology. You cannot
  buy a "data mesh platform." You need to reorganize how your company
  thinks about data ownership. Most organizations are not ready for full
  data mesh but can adopt pieces (especially domain ownership and data
  as a product thinking) without going all-in.
```

## Real-Time vs Batch Architecture

```
Pattern              | Latency           | Use Cases                  | Complexity
---------------------|-------------------|----------------------------|----------
Batch (ETL/ELT)     | Hours to daily    | Reporting, analytics,      | Low
                     |                   | model training             |
Micro-batch          | Minutes           | Near-real-time dashboards, | Medium
                     |                   | alerting                   |
Streaming            | Seconds           | Fraud detection, real-time | High
                     |                   | personalization, IoT       |

Technology Options:
  Batch:     Airflow + dbt, Spark batch, cloud-native ETL
  Streaming: Kafka + Flink, Kafka Streams, Spark Structured Streaming,
             AWS Kinesis, Azure Event Hubs + Stream Analytics

Design Principle:
  Start with batch. Add streaming only for use cases that genuinely
  need sub-minute latency. Most "real-time" requirements are actually
  "within 15 minutes" requirements, which micro-batch handles fine.

  The Kappa Architecture (streaming-only) sounds elegant but is
  operationally expensive. Most enterprises need a Lambda-ish approach:
  batch for historical, streaming for real-time, with a serving layer
  that unifies both.
```

## Data Strategy and Roadmap

### Data Strategy Components

```
1. Vision and Principles
   - What role does data play in business strategy?
   - What are the guiding principles for data management?

2. Use Case Portfolio
   - Prioritized list of data-enabled use cases
   - Mapped to business value and feasibility
   - Sequenced into a delivery roadmap

3. Architecture and Platform
   - Target data platform architecture
   - Technology selections with rationale
   - Migration plan from current state

4. Governance and Organization
   - Data governance framework
   - Roles: CDO, data stewards, data engineers, analytics engineers
   - Operating model (centralized, federated, or hybrid)

5. Data Literacy and Culture
   - Training programs for data consumers
   - Self-service analytics enablement
   - Data-driven decision-making culture change
```

### Data Team Structure

```
Centralized Model:
  One data team serves the entire organization.
  + Consistency, efficiency, no duplication
  - Bottleneck, disconnected from domain context

Embedded Model:
  Data engineers/analysts embedded in each business unit.
  + Domain context, responsiveness
  - Inconsistency, duplication, isolation

Hub-and-Spoke (Recommended for Most):
  Central platform team + embedded analytics engineers.
  Central team: Platform, governance, standards, shared infrastructure
  Embedded:     Domain-specific models, reports, analysis

  This maps well to the dbt project structure:
    Central team owns: staging models, shared macros, platform
    Domain teams own:  their mart models, their dashboards
```

## Self-Service Analytics

```
Self-Service Maturity Model:

Level 1: Report Consumers
  Users view pre-built dashboards and reports.
  Tools: Power BI, Tableau, Looker dashboards

Level 2: Guided Exploration
  Users filter, drill down, and create basic visualizations.
  Tools: Power BI self-service, Tableau Desktop, Looker Explore

Level 3: Data Analysis
  Users write SQL, create their own datasets and models.
  Tools: Mode Analytics, Hex, SQL access to warehouse

Level 4: Advanced Analytics
  Users build statistical models, ML experiments, notebooks.
  Tools: Jupyter, Databricks notebooks, SageMaker Studio

Enablement Requirements:
  - Curated, documented, quality-assured data marts
  - Semantic layer (Looker LookML, dbt metrics, Power BI semantic model)
  - Training program (SQL basics, BI tool training)
  - Data dictionary and catalog (so users can find data)
  - Guardrails (row-level security, cost controls on queries)
```

## Data Platform Migration

```
Migration Approach (e.g., On-Prem DW to Snowflake):

Phase 1: Assessment and Design (4-6 weeks)
  - Inventory existing data assets (tables, views, ETL jobs, reports)
  - Profile data volumes and growth rates
  - Map dependencies (ETL --> DW --> BI tools --> reports)
  - Design target architecture

Phase 2: Foundation (4-6 weeks)
  - Provision target platform
  - Set up networking, security, and access controls
  - Implement ingestion framework
  - Establish CI/CD for data pipelines

Phase 3: Migration Waves (8-16 weeks)
  - Wave 1: Low-risk, high-value data domains
  - Wave 2-N: Increasing complexity, more domains
  - Each wave: Extract, load, transform, validate, cutover
  - Parallel run: Validate target matches source

Phase 4: Cutover and Decommission (4-8 weeks)
  - Final validation and reconciliation
  - Redirect BI tools and consumers to new platform
  - Decommission legacy platform
  - Update documentation and training

Key Risk: Report discrepancies between old and new platform.
Business users WILL find differences. Have a reconciliation
process and a clear escalation path.
```

## Anti-Patterns

- **Building a data lake without governance and it becomes a data swamp.** Ingesting everything from every source without cataloging, quality standards, or ownership produces a petabyte-scale storage bill with no analytical value. Governance and cataloging must be established before data ingestion scales.
- **Selecting a platform based on vendor demonstrations rather than team capabilities.** A platform that looks impressive in a vendor demo but requires skills the team does not have will be underutilized. Match platform selection to existing team skills and realistic hiring plans.
- **Attempting to build a single, unified enterprise data model before delivering any value.** Boil-the-ocean data modeling efforts take years and produce schemas that are obsolete before they are complete. Deliver analytical value incrementally for specific use cases while building common foundations progressively.
- **Treating data engineering as a one-time build rather than an ongoing capability.** Data pipelines break when source systems change, business definitions evolve, and data volumes grow. Without a sustained data engineering team with clear operational responsibilities, the platform degrades continuously.
- **Conflating data mesh organizational principles with technology architecture.** Data mesh is a sociotechnical approach to data ownership and governance, not a technology platform. Implementing a "data mesh" by deploying a new technology stack without changing organizational ownership, accountability, and incentive structures misses the entire point.

## What NOT To Do

- **Do not build a data lake without governance.** An ungoverned data lake becomes a data swamp within 6 months. Nobody can find anything, nobody trusts anything, and the cost spirals.
- **Do not choose a platform based on vendor demos.** Every platform demos well. Evaluate based on your team's skills, your use cases, and your total cost of ownership including engineering effort.
- **Do not skip the semantic layer.** Without a semantic layer (dbt metrics, Looker LookML, Power BI semantic model), every analyst will define "revenue" differently. Centralize business definitions.
- **Do not ignore data quality until after launch.** Build quality checks into your pipelines from day one. Automated testing with dbt tests or Great Expectations is table stakes.
- **Do not build for "real-time" unless you truly need it.** Streaming architectures are 5-10x more expensive to build and operate than batch. Most business questions can wait 15 minutes.
- **Do not let the data platform become an engineering-only concern.** Business users must be involved in defining data models, quality standards, and use case priorities. A technically perfect platform with no business adoption is a waste.
- **Do not try to boil the ocean.** Start with 3-5 high-value use cases, build the platform to serve them, and expand. Do not design for every possible future use case on day one.
- **Do not neglect cost management.** Cloud data platforms charge by compute and storage. Without cost controls (query governors, auto-suspend, resource monitors), costs will surprise you.
## Evidence, version and decision checks

- Confirm platform, vendor edition, deployment model and API/documentation version before naming commands or features.
- State integration dependencies, ownership, recovery requirements and data-governance/security boundaries.
- Distinguish conceptual patterns from validated production designs; require tests and operational readiness before cutover.
