# Few-Shot

Used by: [[references/tools/claude]], [[references/tools/chatgpt]], [[references/tools/gemini]]
Patterns: [[references/patterns/format]]

## When to Use

When the output format is easier to show than describe. Examples outperform written instructions for format-sensitive tasks.

## Structure

```
[Task instruction]

Here are examples of the exact format needed:

<examples>
  <example>
    <input>[example input 1]</input>
    <output>[example output 1]</output>
  </example>
  <example>
    <input>[example input 2]</input>
    <output>[example output 2]</output>
  </example>
</examples>

Now apply this exact pattern to: [actual input]
```

## Rules

- 2 to 5 examples is the sweet spot
- Examples must include edge cases, not just easy cases
- Use XML tags to wrap examples
- If re-prompting for the same formatting correction twice, switch to few-shot
