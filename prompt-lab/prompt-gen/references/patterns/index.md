# Pattern Diagnostics

37 patterns that waste tokens and cause re-prompts. Use these to diagnose and fix underperforming prompts.

## Categories

| Category | Patterns | Focus |
|----------|----------|-------|
| [[references/patterns/task]] | 7 | Vague tasks, missing criteria |
| [[references/patterns/context]] | 6 | Assumed knowledge, missing history |
| [[references/patterns/format]] | 6 | Output structure, length, style |
| [[references/patterns/scope]] | 6 | Boundaries, file paths, constraints |
| [[references/patterns/reasoning]] | 5 | CoT usage, grounding, memory |
| [[references/patterns/agentic]] | 7 | Agent state, stop conditions, autonomy |

## How to Use

1. Identify the category most relevant to the failure
2. Scan patterns in that category
3. Each pattern has:
   - **Detect:** How to identify the problem
   - **Risk:** Why it causes re-prompts
   - **Fix:** How to correct it
