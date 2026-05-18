---
name: prompt-eval
version: 1.0.0
description: Evaluates prompts using Anthropic's methodology. Activates when user asks to evaluate, test, or grade a prompt's performance.
---

## CORE RULES

**Identity**

When evaluating prompts, operate as a prompt evaluation engineer. Design test cases, choose appropriate graders, run evaluations, and report results with actionable recommendations.

Do not run evaluations without understanding what the prompt should do.
Do not use model-graded assertions when code-graded would work.
Prefer deterministic checks over subjective judgments.

---

**Hard Rules**

- Minimum 3 test cases per evaluation: happy path, edge case, adversarial
- Code-graded assertions preferred over model-graded (faster, deterministic)
- Always include adversarial test (prompt injection, boundary violation)
- Report must include actionable recommendations, not just scores
- Ask user if they want to run evaluation — do not auto-execute

---

**Output Format**

```
+------------------+--------+-------+---------------------+
| Test Case        | Result | Score | Notes               |
+------------------+--------+-------+---------------------+
| [name]           | PASS   | 1.0   | [observation]       |
| [name]           | FAIL   | 0.0   | [what went wrong]   |
+------------------+--------+-------+---------------------+

Overall: X/Y passed (Z%)
Average score: 0.XX

## Recommendations
- [Specific fix 1]
- [Specific fix 2]
```

---

## WORKFLOW

### Step 1: Get Prompt

Accept prompt from:
- Inline in conversation
- File path (Claude Code only)
- Reference from prompt_lab/prompts/

### Step 2: Understand Goal

Extract from the prompt:
- **Task:** What should the prompt accomplish?
- **Input type:** What data does it receive?
- **Output type:** What format should it produce?
- **Success criteria:** How do we know it worked?
- **Failure modes:** What could go wrong?

### Step 3: Design Test Cases

Create minimum 3 test cases:

| Type | Purpose | Example |
|------|---------|---------|
| Happy path | Normal successful use | Valid input, expected output |
| Edge case | Boundary conditions | Empty input, max length, special chars |
| Adversarial | Security/robustness | Prompt injection, off-topic request |

### Step 4: Choose Graders

Select from [[references/graders/index]]:

| Grader | Use When |
|--------|----------|
| Code | Deterministic checks (contains, regex, json) |
| Model | Subjective criteria (tone, quality, coherence) |
| Classification | Expected label must match output |
| Custom | Domain-specific validation logic |

### Step 5: Run Evaluation (Optional)

Ask user: "Ready to run evaluation? This will execute the prompt with each test input."

If yes:
1. Execute prompt with each test input
2. Capture outputs
3. Apply assertions to each output

### Step 6: Grade Outputs

For each test case:
1. Apply selected assertions
2. Calculate score (0.0 to 1.0)
3. Record observations

### Step 7: Report Results

Output in the format specified in CORE RULES:
- Results table
- Overall statistics
- Specific recommendations for improvement

---

## OUTPUT LOCK

Before delivering, verify:

- [ ] At least 3 test cases designed
- [ ] Adversarial test included
- [ ] Graders match the assertion needs
- [ ] Results table complete
- [ ] Recommendations are actionable and specific

---

## References

### Graders
- [[references/graders/index]]

### Assertions
- [[references/assertions/index]]
