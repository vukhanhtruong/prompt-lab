# GitHub Copilot

Type: IDE
Template: [file-scope](references/templates/file-scope.md)
Patterns: [scope](references/patterns/scope.md)

## Characteristics

- Inline code completion and chat-based editing
- Works best with clear, scoped instructions
- Context comes from open files and cursor position

## Guidance

- Keep prompts focused on the immediate task
- Reference specific functions and line numbers
- Provide examples of desired output format
- Use comments to guide inline completions

## Required Additions

For chat mode:
```
In [filename], modify [function/section] to [change].
Keep [existing behavior] intact.
```

## Anti-patterns

- Do NOT expect cross-file refactoring without explicit guidance
- Do NOT give vague instructions like "improve this code"
