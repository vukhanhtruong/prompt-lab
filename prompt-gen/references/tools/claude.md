# Claude (claude.ai, Claude API, Claude 4.x)

Type: LLM
Templates:
- Simple tasks: [rtf](references/templates/rtf.md)
- Complex/multi-step tasks on Opus: [opus-task-brief](references/templates/opus-task-brief.md)
Patterns: [task](references/patterns/task.md), [context](references/patterns/context.md)

## Template Selection

Use **opus-task-brief** when:
- Multi-step or agentic task on Opus 4.7
- Task has multiple acceptance criteria
- Complex project with constraints and scope

Use **rtf** when:
- Simple one-shot question or task
- Single clear output needed

## Characteristics

- Follows instructions literally — missing context produces narrow output
- Opus 4.7 especially: does exactly what you say, nothing more
- XML tags help for complex multi-section prompts
- Tends to over-engineer — add constraints to prevent scope creep
- Generalizes better from explanations of WHY, not just WHAT

## Guidance

- Be explicit and specific — Claude does exactly what you say, nothing more
- Use XML tags for structure: `<context>`, `<task>`, `<constraints>`, `<output_format>`
- Add "Only make changes directly requested. Do not add features or refactor beyond what was asked."
- Provide context and reasoning WHY, not just WHAT
- Always specify output format and length explicitly
- For complex tasks on Opus 4.7: front-load everything in one turn

## Required Additions

For complex tasks, add:
```
Only make changes directly requested. Do not add features, abstractions, or files beyond what was asked.
```

## Anti-patterns

- Do NOT add "think step by step" to Opus models — they use adaptive thinking
- Do NOT give vague instructions expecting smart interpretation
