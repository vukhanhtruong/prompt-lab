# Grader Selection

Choose the grader type that matches what you need to verify.

## Quick Reference

| Grader | Use When | Speed | Determinism |
|--------|----------|-------|-------------|
| [[references/graders/code]] | Format, structure, exact matches | Fast | Deterministic |
| [[references/graders/model]] | Subjective quality, tone, coherence | Slow | Non-deterministic |
| [[references/graders/classification]] | Category/label validation | Fast | Deterministic |
| [[references/graders/custom]] | Domain-specific logic | Varies | Depends |

## Decision Tree

1. Can the assertion be checked with string/regex/JSON operations?
   - Yes: Use [[references/graders/code]]
2. Is this a classification task with expected labels?
   - Yes: Use [[references/graders/classification]]
3. Does it require subjective judgment (quality, tone, coherence)?
   - Yes: Use [[references/graders/model]]
4. Does it need domain-specific logic?
   - Yes: Use [[references/graders/custom]]

## Best Practices

- **Prefer code graders** — they're faster and deterministic
- **Use model graders sparingly** — only for truly subjective criteria
- **Combine graders** — use code for format, model for quality
- **Test your graders** — a bad grader gives false confidence
