# Cursor

Type: IDE
Template: [file-scope](references/templates/file-scope.md)
Patterns: [agentic](references/patterns/agentic.md), [scope](references/patterns/scope.md)

## Characteristics

- AI that edits code inside a codebase
- Most common failure: editing wrong file or breaking existing logic
- Needs explicit file anchors for every instruction

## Guidance

- File path + function name + current behavior + desired change
- Include a do-not-touch list for every prompt
- "Done when:" is required — defines when the agent stops editing
- For complex tasks: split into sequential prompts

## Required Additions

Always include:
```
File: [exact/path/to/file.ext]
Function: [exact name]

Do NOT touch: [list files/functions to preserve]

Done when: [exact condition that confirms success]
```

## Anti-patterns

- NEVER give a global instruction without a file anchor
- NEVER skip the do-not-touch list
- NEVER skip done condition
