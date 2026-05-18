---
paths:
  - "skills/**/*.md"
---

## Skill Editing Guidelines

### Behavioral Instructions Over Tool Names

When writing skill instructions that affect Claude's behavior:
- Describe the **behavior** you want, not the tool name
- Tool names can change across platforms (Claude Code, Claude.ai, Copilot CLI)
- Let Claude naturally select the appropriate tool based on behavioral description

**Wrong:**
```
Use the `AskUserQuestion` tool to present options
```

**Right:**
```
Present concrete options as structured choices, not open-ended text
Ask ONE focused question at a time
```

### Silent Processing

Use "silently" in extraction/analysis instructions to prevent Claude from narrating its internal process:
- "**silently** extract these dimensions" → Claude processes internally
- "extract these dimensions" → Claude may output its analysis as prose

This leads to more focused, single-question interactions rather than verbose explanations.

### Reference Implementation

prompt-gen is based on [prompt-master](https://github.com/nidhinjs/prompt-master). When behavior diverges unexpectedly, compare against that reference to understand the working pattern.

### Testing Skills

Before publishing, test the skill by invoking it in Claude Code:
1. Run the skill with a typical user request
2. Verify the behavior matches expectations (structured questions, output format)
3. Check that clarifying questions use the expected UX pattern
