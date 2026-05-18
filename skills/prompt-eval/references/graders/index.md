# Grader Selection

Choose the grader type that matches what you need to verify.

## Quick Reference

| Grader | Use When | Speed | Determinism |
|--------|----------|-------|-------------|
| [code](references/graders/code.md) | Format, structure, exact matches | Fast | Deterministic |
| [model](references/graders/model.md) | Subjective quality, tone, coherence | Slow | Non-deterministic |
| [classification](references/graders/classification.md) | Category/label validation | Fast | Deterministic |
| [custom](references/graders/custom.md) | Domain-specific logic | Varies | Depends |

## Decision Tree

1. Can the assertion be checked with string/regex/JSON operations?
   - Yes: Use [code](references/graders/code.md)
2. Is this a classification task with expected labels?
   - Yes: Use [classification](references/graders/classification.md)
3. Does it require subjective judgment (quality, tone, coherence)?
   - Yes: Use [model](references/graders/model.md)
4. Does it need domain-specific logic?
   - Yes: Use [custom](references/graders/custom.md)

## Best Practices

- **Prefer code graders** — they're faster and deterministic
- **Use model graders sparingly** — only for truly subjective criteria
- **Combine graders** — use code for format, model for quality
- **Test your graders** — a bad grader gives false confidence
