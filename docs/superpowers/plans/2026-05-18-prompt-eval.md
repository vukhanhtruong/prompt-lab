# prompt-eval Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create the prompt-eval skill that evaluates prompts using Anthropic's methodology.

**Architecture:** Modular markdown references with [[links]]. SKILL.md routes to graders/index.md for grader selection. Claude Code-native execution (no external CLI required).

**Tech Stack:** Markdown files only.

**Spec:** `docs/superpowers/specs/2026-05-18-prompt-lab-design.md`

**Source:** Anthropic prompt_evaluations course — https://github.com/anthropics/courses/tree/master/prompt_evaluations

---

## File Structure

```
prompt-lab/
├── prompt-eval/
│   ├── SKILL.md
│   └── references/
│       ├── graders/
│       │   ├── index.md
│       │   ├── code.md
│       │   ├── model.md
│       │   ├── classification.md
│       │   └── custom.md
│       └── assertions/
│           └── index.md
└── (LICENSE, README from prompt-gen plan)
```

**Total files:** 8

---

## Task 1: Directory Setup

**Files:**
- Create: directories for prompt-eval

**Prerequisite:** prompt-gen Task 1 completed (LICENSE, README exist)

- [ ] **Step 1: Create directory structure**

Run: `mkdir -p prompt-lab/prompt-eval/references/{graders,assertions}`

- [ ] **Step 2: Verify structure**

Run: `find prompt-lab/prompt-eval -type d | sort`

Expected:
```
prompt-lab/prompt-eval
prompt-lab/prompt-eval/references
prompt-lab/prompt-eval/references/assertions
prompt-lab/prompt-eval/references/graders
```

- [ ] **Step 3: Commit**

```bash
git add prompt-lab/prompt-eval/
git commit -m "feat: scaffold prompt-eval directories"
```

---

## Task 2: prompt-eval SKILL.md

**Files:**
- Create: `prompt-lab/prompt-eval/SKILL.md`

**Reference:** Anthropic prompt_evaluations course methodology

- [ ] **Step 1: Write SKILL.md**

Include:
- Frontmatter (name, version, description)
- CORE RULES section (identity, constraints, output format)
- WORKFLOW section:
  1. Get prompt (inline, file path, or prompt_lab/prompts/)
  2. Understand goal (task, input/output types, success criteria, failure modes)
  3. Design test cases (minimum 3: happy path, edge case, adversarial)
  4. Choose graders (code-graded preferred)
  5. Run evaluation (execute prompt with each test input)
  6. Grade outputs (apply assertions, calculate scores)
  7. Report results (table + score + recommendations)
- OUTPUT LOCK section (verification checklist)
- References section with [[links]]

- [ ] **Step 2: Verify output format matches spec**

Table format with Test Case | Result | Score | Notes columns.

- [ ] **Step 3: Commit**

```bash
git add prompt-lab/prompt-eval/SKILL.md
git commit -m "feat(prompt-eval): add SKILL.md with Anthropic evaluation workflow"
```

---

## Task 3: Graders Index + Code Grader

**Files:**
- Create: `prompt-lab/prompt-eval/references/graders/index.md`
- Create: `prompt-lab/prompt-eval/references/graders/code.md`

**Reference:** promptfoo assertion patterns

- [ ] **Step 1: Create graders/index.md**

Grader selection guide:
- Code graders: deterministic, fast, preferred
- Model graders: subjective criteria only
- Classification: category validation
- Custom: domain-specific logic

Decision tree for grader selection.

- [ ] **Step 2: Create code.md**

Code-graded assertions:
- `contains` / `not-contains`
- `equals` / `not-equals`
- `regex` / `not-regex`
- `starts-with` / `ends-with`
- `length` (min/max)
- `json-schema`
- `is-json` / `is-valid-json`

Each with YAML example and when to use.

- [ ] **Step 3: Commit**

```bash
git add prompt-lab/prompt-eval/references/graders/
git commit -m "feat(prompt-eval): add graders index and code grader"
```

---

## Task 4: Model + Classification Graders

**Files:**
- Create: `prompt-lab/prompt-eval/references/graders/model.md`
- Create: `prompt-lab/prompt-eval/references/graders/classification.md`

- [ ] **Step 1: Create model.md**

Model-graded assertions:
- `llm-rubric` with natural language criteria
- Scoring rubrics (1-5 scale)
- When to use: subjective quality, tone, coherence
- When NOT to use: anything code can check

Include rubric design guidelines from Anthropic course.

- [ ] **Step 2: Create classification.md**

Classification graders:
- Expected label matching
- Multi-label classification
- Confidence thresholds
- Confusion matrix interpretation

- [ ] **Step 3: Commit**

```bash
git add prompt-lab/prompt-eval/references/graders/
git commit -m "feat(prompt-eval): add model and classification graders"
```

---

## Task 5: Custom Grader + Assertions

**Files:**
- Create: `prompt-lab/prompt-eval/references/graders/custom.md`
- Create: `prompt-lab/prompt-eval/references/assertions/index.md`

- [ ] **Step 1: Create custom.md**

Custom grader patterns:
- Domain-specific validation logic
- Combining multiple assertions
- Weighted scoring
- Conditional assertions

- [ ] **Step 2: Create assertions/index.md**

Common assertion patterns:
- Safety assertions (no PII, no harmful content)
- Format assertions (valid JSON, markdown structure)
- Semantic assertions (addresses the question, stays on topic)
- Boundary assertions (length limits, token counts)

Patterns organized by evaluation goal.

- [ ] **Step 3: Commit**

```bash
git add prompt-lab/prompt-eval/references/
git commit -m "feat(prompt-eval): add custom grader and assertion patterns"
```

---

## Task 6: Final Verification

- [ ] **Step 1: Count files**

Run: `find prompt-lab/prompt-eval -name "*.md" | wc -l`

Expected: 7 files (1 SKILL.md + 5 graders + 1 assertions)

- [ ] **Step 2: Verify all [[links]] resolve**

Run: `grep -r '\[\[' prompt-lab/prompt-eval/`

Check each link points to an existing file.

- [ ] **Step 3: Test skill loading**

In Claude Code, verify SKILL.md loads and grader routing works.

- [ ] **Step 4: Final commit**

```bash
git add prompt-lab/
git commit -m "feat(prompt-eval): complete v1 implementation"
```

---

## Execution Notes

- Methodology follows Anthropic prompt_evaluations course strictly
- Code graders preferred over model graders (faster, deterministic)
- All [[links]] use `references/` prefix, no `.md` extension
- Grader selection should be based on what can be checked deterministically
- Output format is terminal-friendly ASCII table
