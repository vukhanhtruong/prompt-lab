# Claude Code

Type: Agentic
Templates:
- Complex/multi-step tasks: [opus-task-brief](references/templates/opus-task-brief.md)
- Simple autonomous tasks: [react-stop](references/templates/react-stop.md)
Patterns: [agentic](references/patterns/agentic.md), [scope](references/patterns/scope.md)

## Template Selection

Use **opus-task-brief** when:
- Building a feature or app from scratch
- Multi-file changes required
- Task has multiple acceptance criteria
- User mentions "build", "create", "implement" a system

Use **react-stop** when:
- Single-file fix or modification
- Simple automation task
- User mentions "fix", "update", "change" one thing

**Default to opus-task-brief for ambiguous cases** — it's more complete.

## Characteristics

- Agentic — runs tools, edits files, executes commands autonomously
- Opus 4.7 is more literal than 4.6 — vague prompts produce narrower results
- Uses fewer tool calls by default, reasons more between calls
- Spawns fewer subagents by default

## Guidance

- Front-load everything in one turn: intent, file scope, constraints, acceptance criteria, session strategy
- Always scope to specific files and directories — never global instructions without path anchor
- Stop conditions are MANDATORY — runaway loops are the biggest credit killer
- Do NOT add "think step by step" — Opus 4.7 uses adaptive thinking and calibrates automatically
- Add "Only make changes directly requested. Do not add features or refactor beyond what was asked."
- New task = new session. Use /rewind instead of correcting mid-conversation

## Required Additions

Always include:
```
Scope: Only modify files in [directory]
Do NOT touch: [forbidden files]

Stop and ask before:
- Deleting any file
- Adding any dependency
- Modifying database schema
```

## Session Strategy

- New session for unrelated tasks
- /compact at ~50% context, not 90%
- Use subagents for file-heavy research to keep main context clean

## Anti-patterns

- Do NOT give global instructions without file/directory anchor
- Do NOT expect smart scope inference — be explicit
- Do NOT skip stop conditions
