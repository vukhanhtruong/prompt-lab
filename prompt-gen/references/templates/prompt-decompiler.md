# Prompt Decompiler

Patterns: [task](references/patterns/task.md)

## When to Use

Breaking down, adapting, or splitting existing prompts. Analysis and adaptation, not building from scratch.

## Task Types

- **Break down** — explain what each part does
- **Adapt** — rewrite for a different tool while preserving intent
- **Simplify** — remove redundancy without losing meaning
- **Split** — divide a complex prompt into a cleaner sequence

## Break Down Format

```
Original prompt: [paste]

Structure analysis:
- Role/Identity: [what role is assigned and why]
- Task: [what action is being requested]
- Constraints: [what limits are set]
- Format: [what output shape is expected]
- Weaknesses: [what is missing or could cause wrong output]

Recommended fix: [rewritten version with gaps filled]
```

## Adapt Format

For adapt tasks, ask: "What tool is the original from, and what tool are you adapting for?"

```
Original ([source tool]): [original prompt]

Adapted for [target tool]:
[rewritten prompt using target tool syntax]

Key changes made:
- [change 1 and why]
- [change 2 and why]
```

## Split Format

```
Original prompt: [paste]

This prompt is doing [N] things. Split into [N] sequential prompts:

Prompt 1 — [what it handles]:
[prompt block]

Prompt 2 — [what it handles]:
[prompt block]

Run these in order. Each output feeds the next.
```
