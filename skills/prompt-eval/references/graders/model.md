# Model Graders

LLM-based assertions for subjective criteria that can't be checked programmatically.

## When to Use

- Tone and voice assessment
- Quality and coherence evaluation
- Semantic correctness (not just format)
- Nuanced criteria that require judgment

## When NOT to Use

- Anything code can check (format, length, contains)
- Exact match requirements
- High-stakes decisions (model graders are non-deterministic)

## llm-rubric

Natural language criteria evaluated by an LLM.

```yaml
assert:
  - type: llm-rubric
    value: |
      The response should:
      1. Be written in a professional tone
      2. Address the user's question directly
      3. Avoid jargon unless necessary
      4. Be concise (no unnecessary elaboration)
```

## Scoring Rubrics

For numeric scores, provide clear criteria per level:

```yaml
assert:
  - type: llm-rubric
    value: |
      Score the response from 1-5:
      
      5 - Excellent: Directly answers the question, professional tone,
          well-structured, no errors
      4 - Good: Answers the question with minor issues in tone or structure
      3 - Acceptable: Answers the question but has noticeable issues
      2 - Poor: Partially addresses the question, significant issues
      1 - Unacceptable: Does not answer the question or has major problems
```

## Rubric Design Guidelines

### Be Specific

Bad: "The response should be good"
Good: "The response should answer the user's question in under 100 words without using technical jargon"

### Use Observable Criteria

Bad: "The response should feel professional"
Good: "The response should use formal language, avoid contractions, and include a greeting"

### Include Examples

```yaml
assert:
  - type: llm-rubric
    value: |
      The response should be empathetic. Examples:
      
      Good: "I understand this is frustrating. Let me help you resolve this."
      Bad: "Your request has been logged."
```

### Avoid Ambiguity

Bad: "The response should be appropriate"
Good: "The response should not contain profanity, personal opinions, or speculative information"

## Combining with Code Graders

Use code graders for what they can check, model graders for the rest:

```yaml
assert:
  - type: contains
    value: "Summary:"
  - type: length
    max: 500
  - type: llm-rubric
    value: "The summary accurately captures the main points without distortion"
```
