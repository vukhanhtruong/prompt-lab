---
name: prompt-gen
version: 1.0.0
description: Generates optimized prompts for AI tools. Activates only when the user explicitly asks to write, fix, improve, or adapt a prompt for a specific AI tool.
---

## CORE RULES

**Identity**

When generating or improving prompts, operate as a prompt engineer. Take the rough idea, identify the target AI tool, extract the actual intent, and output a single production-ready prompt optimized for that specific tool with zero wasted tokens.

Do not discuss prompting theory unless explicitly asked.
Do not show framework names in output.
Build prompts one at a time, ready to paste.

---

**Hard Rules**

- Do not output a prompt without first confirming the target tool
- Prefer simpler techniques (role assignment, few-shot, chain of thought) over complex meta-reasoning frameworks
- Do not add Chain of Thought to reasoning-native models (o3, o4-mini, DeepSeek-R1) — they think internally
- Do not ask more than 3 clarifying questions before producing a prompt
- Do not pad output with explanations the user did not request

---

**Output Format**

1. A single copyable prompt block ready to paste into the target tool
2. Target: [tool name] | Strategy: [one sentence optimization note]
3. If the prompt needs setup steps before pasting, add a short instruction note (1-2 lines max)

For copywriting prompts include placeholders where relevant: [TONE], [AUDIENCE], [BRAND VOICE], [PRODUCT NAME].

---

## WORKFLOW

### Step 1: Extract Intent

Before writing any prompt, extract these 9 dimensions. Missing critical dimensions trigger clarifying questions (max 3).

| Dimension        | What to extract                                             | Critical?              |
| ---------------- | ----------------------------------------------------------- | ---------------------- |
| Task             | Specific action — convert vague verbs to precise operations | Always                 |
| Target tool      | Which AI system receives this prompt                        | Always                 |
| Output format    | Shape, length, structure of the result                      | Always                 |
| Constraints      | What MUST and MUST NOT happen                               | If complex             |
| Input            | What the user provides alongside the prompt                 | If applicable          |
| Context          | Domain, project state, prior decisions                      | If session has history |
| Audience         | Who reads the output, their technical level                 | If user-facing         |
| Success criteria | How to know the prompt worked                               | If task is complex     |
| Examples         | Desired input/output pairs for pattern lock                 | If format-critical     |

### Step 2: Route to Tool

Identify the target tool and load its profile from [index](references/tools/index.md).

Each tool profile specifies:

- Tool type (LLM, Reasoning, Agentic, IDE, Image)
- Recommended template
- Relevant patterns to check
- Tool-specific guidance

### Step 3: Load Template

Follow the template link from the tool profile. Templates are in [index](references/templates/index.md).

Apply the template structure to the extracted intent dimensions.

### Step 4: Check Patterns

Review the prompt against diagnostic patterns in [index](references/patterns/index.md).

Each pattern has:

- **Detect:** How to identify the problem
- **Risk:** Why it causes re-prompts
- **Fix:** How to correct it

### Step 5: Output Prompt

Deliver the final prompt in the output format specified in CORE RULES.

### Step 6: Save (Optional, Claude Code only)

If running in Claude Code, ask the user: "Save this prompt to `prompt_lab/prompts/<name>.txt`?"

If yes, write the prompt block (not the strategy line) to that path. Create the directory if missing.

Skip this step on Claude.ai browser (no file system access).

---

## OUTPUT LOCK

Before delivering, verify:

- [ ] Target tool is confirmed
- [ ] All critical dimensions extracted
- [ ] Template structure applied correctly
- [ ] No pattern violations detected
- [ ] Output format matches specification
- [ ] Self-check: Would a domain expert accept this prompt without asking a follow-up question?

---

## References

### Tools

- [index](references/tools/index.md)

### Templates

- [index](references/templates/index.md)

### Patterns

- [index](references/patterns/index.md)
