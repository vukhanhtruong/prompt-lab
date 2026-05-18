# Claude Code

Type: Agentic
Template: [react-stop](references/templates/react-stop.md)
Patterns: [agentic](references/patterns/agentic.md), [scope](references/patterns/scope.md)

## Characteristics

- Runs tools, edits files, executes commands autonomously
- More literal than previous versions — vague prompts produce narrow results
- Uses fewer tool calls by default, reasons more between calls
- Spawns fewer subagents by default

## Guidance

- Front-load everything: intent, file scope, constraints, acceptance criteria
- Always scope to specific files and directories — never global instructions without path anchor
- Stop conditions are MANDATORY — runaway loops are the biggest credit killer
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
