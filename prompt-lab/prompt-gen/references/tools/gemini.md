# Gemini 2.x / Gemini 3 Pro

Type: LLM
Template: [[references/templates/rtf]]
Patterns: [[references/patterns/task]], [[references/patterns/context]]

## Characteristics

- Strong at long-context and multimodal — large context window
- Prone to hallucinated citations
- Can drift from strict output formats

## Guidance

- Leverage large context window for document-heavy prompts
- Always add citation constraint for factual tasks
- Use explicit format locks with a labelled example
- For grounded tasks, add context-only instruction

## Required Additions

For factual tasks:
```
Cite only sources you are certain of. If uncertain, say [uncertain].
```

For grounded tasks:
```
Base your response only on the provided context. Do not extrapolate.
```

## Anti-patterns

- Do NOT expect reliable citations without explicit instruction
- Do NOT assume format adherence without explicit lock
