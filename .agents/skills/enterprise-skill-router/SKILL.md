---
name: enterprise-skill-router
description: >-
  Default enterprise consultation coordinator. Use for any enterprise strategy,
  operations, supply chain, industry advisory, managed services or enterprise
  technology question when the best specialized skill is not already specified.
  Identify and apply the most relevant project-local skills before answering.
---

# Enterprise Skill Router

## Role

This is the default consultation router for this repository. Its job is to understand the question and apply relevant local specialist skills without requiring the user to name them. It does not replace specialist methods or pretend to have read files that have not been loaded.

## Routing procedure

1. Identify the user's goal, decision, sector, time horizon, constraints and requested output.
2. Identify the smallest useful set of local skills from the index below. Prefer one lead skill and at most two supporting skills by default, with more only when genuinely needed.
3. Read the relevant `.agents/skills/<skill-id>/SKILL.md` before applying its methodology. If a specific skill is unavailable, say so rather than inventing content.
4. Distinguish shared assumptions, avoid double-counting costs or benefits, and resolve conflicts using task relevance and evidence quality.
5. Give a direct answer, followed by relevant analysis, options, risks and next steps proportional to the question's complexity.
6. Do not change repository files, execute code, or take external actions unless requested and appropriate. No requirement to use tools for simple conceptual answers.
7. If the user invokes a named specialist skill, use it first; add only justified supporting skills.

## Available local specialist skills

The following list reflects only `SKILL.md` files present in this repository:

- **Corporate Strategy (10):** `blue-ocean-strategy`, `competitive-intelligence`, `corporate-restructuring`, `growth-strategy`, `innovation-strategy`, `market-entry-strategy`, `market-sizing`, `portfolio-optimization`, `scenario-planning-strategy`, `strategic-partnerships`
- **Enterprise Technology (11):** `ai-analytics-enterprise`, `automation-robotics`, `cloud-migration`, `cybersecurity-architecture`, `data-migration`, `data-platforms`, `digital-product-consulting`, `enterprise-architecture`, `erp-implementation`, `it-modernization`, `salesforce-consulting`
- **Industry Advisory (5):** `energy-consulting`, `financial-services-consulting`, `industrials-consulting`, `insurance-consulting`, `retail-consumer-consulting`
- **Managed Services (10):** `application-support`, `claims-processing`, `customer-support-ops`, `it-service-desk`, `managed-finance-ops`, `managed-hr-ops`, `marketing-operations`, `procurement-operations`, `security-operations-managed`, `service-level-mgmt`
- **Operations Consulting (11):** `customer-operations`, `inventory-management-operations`, `lean-six-sigma`, `logistics-consulting`, `manufacturing-consulting`, `process-improvement`, `process-redesign`, `procurement-consulting`, `service-delivery`, `shared-services`, `workforce-productivity`
- **Supply Chain (10):** `demand-forecasting`, `inventory-management-supply-chain`, `logistics-optimization`, `logistics-planning`, `procurement-strategy`, `supplier-management`, `supply-chain-analytics`, `supply-chain-risk`, `sustainable-supply-chain`, `warehouse-operations`

## Selection examples

- **ERP data cutover:** `data-migration` (lead) + `erp-implementation` for process dependencies; add `data-platforms` only for platform architecture.
- **Inventory mismatch:** `inventory-management-operations` for physical inventory/serial tracking; `inventory-management-supply-chain` for reorder points and stock policies.
- **Service incident vs. outsourcing:** `it-service-desk` for L1 request operations; `application-support` for application stewardship; `service-level-mgmt` for SLA definitions.
- **Supplier disruption:** `supply-chain-risk` for exposure, `supplier-management` for remedies, `procurement-strategy` for sourcing decisions.
- **ERP modernization:** `enterprise-architecture` for dependencies, `erp-implementation` for deployment, `data-migration` for cutover, but only load the files needed.

## No phantom skills

Before recommending or claiming to load a skill, confirm its local file exists. Do not suggest removed specialties as locally installed. Answer with general knowledge or a genuinely available adjacent skill when no direct match exists.

## Operating constraints

- No guarantee of answers from proprietary data without user-provided access.
- For legal, regulated, health or safety-dependent matters, check jurisdiction and current official requirements rather than asserting compliance.
- Treat SkillDB source summaries as scope descriptions, not validated research evidence.
- Higher-priority system and user safety rules remain applicable.
- If the topic lies outside this collection, answer using general reasoning instead of forcing an irrelevant skill.

## Example invocation

- Codex: `$enterprise-skill-router Compare options for modernizing order-to-cash operations.`
- Claude Code: `/enterprise-skill-router Build a cross-functional operations improvement roadmap.`
- Automatic: ask a normal question in this repository; root instructions require routing by default.

## Compact session catalog

For a new conversation, the user may explicitly invoke `enterprise-context-init`. This loads `SKILL_INDEX.md` and this routing policy, not the full specialist library. **Do not require it**: the default router remains active under root instructions. For each real question, select from the verified index and open only the applicable specialist `SKILL.md` file(s). Check file existence and account for user additions/removals. Do not claim persistent memory or automatic preloading of all Skills.

## Conversation isolation during routing

- A new, unrelated chat starts with **no implicit preferences or decisions** from previous threads. Choose specialists and recommendations from the current question, current chat and pertinent evidence, not prior-session topic frequency.
- Do not infer that the user favors an asset, blockchain, vendor, methodology, strategy, or prior allocation simply because it was discussed in another conversation.
- Do not proactively consult past chats, stored summaries, or user-specific project notes when they are irrelevant. Explicit requests to resume or reuse a past decision are exceptions; retrieve only authorized relevant context or ask for a recap.
- A repository Skill is a **method**, not a user preference. Catalog initialization discovers methods; it does not merge old conversations, reset memory, or override the root `AGENTS.md` isolation rule.
- If a prior-chat detail is surfaced through the client, do not use it as an unconfirmed premise for an unrelated decision. Separately supported recommendations remain valid even when they happen to overlap an earlier topic.

## Across conversations

- Treat each new thread as a separate conversation. Use this router by default for a relevant question; **do not require** `enterprise-context-init` first.
- If the user invokes `enterprise-context-init`, summarize only the compact catalog. Full specialist instructions are loaded when relevant to the task.
- Previous chat decisions and state do not carry over automatically. Request a brief recap when they are essential.
- Do not treat Skills located in other repository folders as available unless explicitly included in the current working environment.

