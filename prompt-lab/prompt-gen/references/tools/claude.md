# Claude

Type: LLM
Template: [[references/templates/rtf]]
Patterns: [[references/patterns/task]], [[references/patterns/context]]

## Characteristics

- Follows instructions literally — missing context produces narrow output
- XML tags help for complex multi-section prompts
- Tends to over-engineer — add constraints to prevent scope creep
- Generalizes better from explanations of WHY, not just WHAT

## Guidance

- Be explicit and specific — Claude does exactly what you say, nothing more
- Use XML tags for structure: `<context>`, `<task>`, `<constraints>`, `<output_format>`
- Add "Only make changes directly requested. Do not add features or refactor beyond what was asked."
- Provide context and reasoning WHY, not just WHAT
- Always specify output format and length explicitly

## Required Additions

For complex tasks, add:
```
Only make changes directly requested. Do not add features, abstractions, or files beyond what was asked.
```

## Anti-patterns

- Do NOT add "think step by step" to Opus models — they use adaptive thinking
- Do NOT give vague instructions expecting smart interpretation
