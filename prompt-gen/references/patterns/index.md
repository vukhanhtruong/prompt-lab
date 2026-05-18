# Pattern Diagnostics

37 patterns that waste tokens and cause re-prompts. Use these to diagnose and fix underperforming prompts.

## Categories

| Category | Patterns | Focus |
|----------|----------|-------|
| [task](references/patterns/task.md) | 7 | Vague tasks, missing criteria |
| [context](references/patterns/context.md) | 6 | Assumed knowledge, missing history |
| [format](references/patterns/format.md) | 6 | Output structure, length, style |
| [scope](references/patterns/scope.md) | 6 | Boundaries, file paths, constraints |
| [reasoning](references/patterns/reasoning.md) | 5 | CoT usage, grounding, memory |
| [agentic](references/patterns/agentic.md) | 7 | Agent state, stop conditions, autonomy |

## How to Use

1. Identify the category most relevant to the failure
2. Scan patterns in that category
3. Each pattern has:
   - **Detect:** How to identify the problem
   - **Risk:** Why it causes re-prompts
   - **Fix:** How to correct it
