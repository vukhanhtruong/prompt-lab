# ChatGPT / GPT-5.x

Type: LLM
Template: [rtf](references/templates/rtf.md)
Patterns: [task](references/patterns/task.md), [context](references/patterns/context.md)

## Characteristics

- Handles dense instruction well
- Strong at long-context synthesis and tone adherence
- Start with the smallest prompt that achieves the goal

## Guidance

- Be explicit about the output contract: format, length, what "done" looks like
- State tool-use expectations explicitly if model has access to tools
- Use compact structured outputs — GPT-5.x handles dense instruction well
- Constrain verbosity when needed

## Required Additions

For concise output:
```
Respond in under 150 words. No preamble. No caveats.
```

## Anti-patterns

- Do NOT over-structure simple tasks — add structure only when needed
- Do NOT assume implicit context will be inferred
