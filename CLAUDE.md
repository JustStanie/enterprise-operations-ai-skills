# CLAUDE.md — Enterprise Operations AI Skills

@AGENTS.md

Follow `AGENTS.md` as the shared repository policy. For enterprise consultation questions, consult `.agents/skills/enterprise-skill-router/SKILL.md` before selecting specialized skills, then read the relevant specialist files.

The Claude Code skill discovery path is `.claude/skills/`, linked locally to the canonical `.agents/skills/` directory. When the link exists and the installed Claude version detects it, specialists can be invoked as `/skill-name` and the coordinator as `/enterprise-skill-router`.

Default mode: consultation. Do not change files, run installations or change global instructions unless requested. Apply relevant global instructions only within their appropriate scope and priority.

## Context initialization

- Optional: `/enterprise-context-init` reads `SKILL_INDEX.md` and the coordinator for a lightweight map of capabilities in **this chat**. This is not persistent memory.
- Do not load every `SKILL.md` during initialization; read relevant specialist instructions when questions arise.
- Normal questions still use `enterprise-skill-router` automatically through the repository policy.
- If the native slash command is not registered, ask: `Read .agents/skills/enterprise-context-init/SKILL.md and initialize the repository skill catalog.`

## Conversations and initialization

When a user creates a new Claude Code conversation in `enterprise-operations-ai-skills`, apply the shared repository policy and `enterprise-skill-router` without requiring `/enterprise-context-init`. The initializer is an optional, explicit catalog overview, **not** an obligatory command before each question. Reuse a chat when its history matters; start a new chat for unrelated subjects. Skills remain local to this repository. Never claim that prior chat history, a previous initialization, or other repositories' Skills are automatically available.

## Thread Context Isolation

- Follow the **Thread Context Isolation** section of `AGENTS.md` for every new independent Claude Code conversation.
- Do not favor a chain, asset, product, tool, technique, or decision merely because it appeared in another chat in this repository. Pick specialists based on the **current** request and evidence.
- Do not import automatic memories, summaries, or prior-session notes as implicit requirements. Reuse earlier work **only on an explicit continuity request**; confirm unavailable assumptions instead of guessing.
- `/enterprise-context-init` only reads the Skill catalog; it neither restores earlier chats nor disables client-level memory. Repository instructions are behavioral guidance, **not a technical guarantee of memory isolation**.

## Automated repository maintenance (only when requested)

The deterministic local index and audit generator is `python scripts/sync_skill_audit.py --write`, with `--check` for a read-only CI test. See `AUDIT_AUTOMATION.md`. Do **not** run it to initialize a chat. `*-context-init` remains an optional **read-only** catalog overview. Existing expert review evidence is historical and never automatically renewed after a Skill changes.
