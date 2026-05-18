# Chain of Thought

Used by: [[references/tools/claude]], [[references/tools/chatgpt]], [[references/tools/gemini]]
Patterns: [[references/patterns/reasoning]]

## When to Use

Logic-heavy tasks, math, debugging, and multi-factor analysis where the AI needs to reason carefully before committing to an answer.

**Do NOT use for:** o3, o4-mini, DeepSeek-R1, or other reasoning-native models.

## Structure

```
[Task statement]

Before answering, think through this carefully:
<thinking>
1. What is the actual problem being asked?
2. What constraints must the solution respect?
3. What are the possible approaches?
4. Which approach is best and why?
</thinking>

Give your final answer in <answer> tags only.
```

## When to Use

- Debugging where the cause is not obvious
- Comparing two technical approaches
- Any math or calculation
- Analysis where a wrong first impression is likely

## When NOT to Use

- o3 / o4-mini / reasoning models (they think internally)
- Simple tasks where the answer is clear
- Creative tasks (CoT can kill natural voice)
