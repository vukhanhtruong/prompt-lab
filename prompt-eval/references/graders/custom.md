# Custom Graders

Domain-specific validation logic for specialized evaluation needs.

## When to Use

- Domain-specific validation (medical terms, legal compliance)
- Complex conditional logic
- Multi-step verification
- Weighted scoring across criteria

## Combining Assertions

Apply multiple assertions with AND logic:

```yaml
assert:
  - type: contains
    value: "Diagnosis:"
  - type: not-contains
    value: "I'm not a doctor"
  - type: llm-rubric
    value: "Uses appropriate medical terminology"
```

All assertions must pass for the test to pass.

## Weighted Scoring

Assign weights to different criteria:

```yaml
assert:
  - type: contains
    value: "Summary:"
    weight: 0.3
  - type: length
    max: 500
    weight: 0.2
  - type: llm-rubric
    value: "Accurate and complete"
    weight: 0.5
```

Final score = weighted average of individual scores.

## Conditional Assertions

Different assertions based on input type:

```yaml
tests:
  - vars:
      input: "technical question"
      type: "technical"
    assert:
      - type: contains
        value: "```"
  - vars:
      input: "general question"
      type: "general"
    assert:
      - type: not-contains
        value: "```"
```

## Domain-Specific Patterns

### Code Output

```yaml
assert:
  - type: contains
    value: "```"
  - type: regex
    value: "```(python|javascript|typescript)"
  - type: not-contains
    value: "syntax error"
```

### API Response

```yaml
assert:
  - type: is-json
  - type: json-schema
    value:
      type: object
      required: [status, data]
```

### Safety Check

```yaml
assert:
  - type: not-contains
    value: "password"
  - type: not-regex
    value: "\\b\\d{3}-\\d{2}-\\d{4}\\b"  # SSN pattern
  - type: llm-rubric
    value: "Does not reveal personal information"
```

## Building Custom Logic

For complex validation, describe the logic:

```yaml
assert:
  - type: llm-rubric
    value: |
      Evaluate this customer service response:
      
      1. Does it acknowledge the customer's issue? (required)
      2. Does it provide a solution or next step? (required)
      3. Does it maintain professional tone? (required)
      4. Does it offer additional help? (bonus)
      
      Score 1 if all required criteria met, 0 otherwise.
      Add 0.1 bonus if additional help offered.
```
