# Code Graders

Deterministic assertions that check output structure, format, and content.

## String Assertions

### contains

Check if output contains a substring.

```yaml
assert:
  - type: contains
    value: "expected text"
```

**Use when:** Output must include specific text.

### not-contains

Check that output does NOT contain a substring.

```yaml
assert:
  - type: not-contains
    value: "forbidden text"
```

**Use when:** Output must NOT include certain text (PII, profanity, etc.).

### equals

Check exact string match.

```yaml
assert:
  - type: equals
    value: "exact expected output"
```

**Use when:** Output must match exactly (rare — usually too strict).

### starts-with / ends-with

Check prefix or suffix.

```yaml
assert:
  - type: starts-with
    value: "# Summary"
  - type: ends-with
    value: "---"
```

**Use when:** Output must have specific header/footer format.

## Pattern Assertions

### regex

Check against a regular expression.

```yaml
assert:
  - type: regex
    value: "^[A-Z][a-z]+ [A-Z][a-z]+$"
```

**Use when:** Output must match a pattern (email, phone, etc.).

### not-regex

Check that output does NOT match a pattern.

```yaml
assert:
  - type: not-regex
    value: "\\b(password|secret|key)\\b"
```

**Use when:** Output must NOT contain sensitive patterns.

## Length Assertions

### length

Check output length constraints.

```yaml
assert:
  - type: length
    min: 100
    max: 500
```

**Use when:** Output must be within length bounds.

## Structure Assertions

### is-json

Check if output is valid JSON.

```yaml
assert:
  - type: is-json
```

**Use when:** Output must be parseable as JSON.

### json-schema

Check JSON against a schema.

```yaml
assert:
  - type: json-schema
    value:
      type: object
      required: [name, email]
      properties:
        name:
          type: string
        email:
          type: string
          format: email
```

**Use when:** JSON output must conform to a specific structure.

## Combining Assertions

Multiple assertions are AND-ed together:

```yaml
assert:
  - type: contains
    value: "Summary:"
  - type: not-contains
    value: "TODO"
  - type: length
    max: 1000
```

All must pass for the test case to pass.
