# Classification Graders

Assertions for tasks where the output must match expected categories or labels.

## When to Use

- Sentiment analysis (positive/negative/neutral)
- Intent classification
- Category assignment
- Multi-class labeling

## Expected Label

Check that output matches the expected label.

```yaml
tests:
  - vars:
      input: "I love this product!"
    assert:
      - type: equals
        value: "positive"
  - vars:
      input: "This is terrible."
    assert:
      - type: equals
        value: "negative"
```

## Label in Output

When the model outputs more than just the label:

```yaml
assert:
  - type: contains
    value: "Category: Technology"
```

Or with regex for structured output:

```yaml
assert:
  - type: regex
    value: "^Category: (Technology|Business|Sports)$"
```

## Multi-label Classification

When multiple labels are valid:

```yaml
assert:
  - type: contains-any
    value:
      - "urgent"
      - "high-priority"
```

## Confidence Thresholds

If the model outputs confidence scores:

```yaml
assert:
  - type: regex
    value: "positive \\(confidence: 0\\.[8-9]\\d*\\)"
```

## Test Case Design

### Include All Classes

Test each category the classifier should recognize:

```yaml
tests:
  - description: "Positive sentiment"
    vars:
      input: "Great experience!"
    assert:
      - type: equals
        value: "positive"
  - description: "Negative sentiment"
    vars:
      input: "Worst ever."
    assert:
      - type: equals
        value: "negative"
  - description: "Neutral sentiment"
    vars:
      input: "It was okay."
    assert:
      - type: equals
        value: "neutral"
```

### Edge Cases

Include ambiguous inputs:

```yaml
tests:
  - description: "Mixed sentiment"
    vars:
      input: "Good product but terrible shipping"
    assert:
      - type: contains-any
        value: ["mixed", "neutral"]
```

## Confusion Matrix

Track classification results to identify:
- Which classes are confused with each other
- Systematic biases in the classifier
- Edge cases that need prompt refinement
