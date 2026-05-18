# File-Scope

Patterns: [scope](references/patterns/scope.md), [agentic](references/patterns/agentic.md)

## When to Use

Code editing tasks in IDEs (Cursor, Windsurf, GitHub Copilot). Prevents editing wrong files or breaking existing logic.

## Structure

```
File: [exact/path/to/file.ext]
Function/Component: [exact name]

Current Behavior:
[What this code does right now — be specific]

Desired Change:
[What it should do after the edit — be specific]

Scope:
Only modify [function / component / section].
Do NOT touch: [list everything to leave unchanged]

Constraints:
- Language/framework: [specify version]
- Do not add dependencies not in [package.json / requirements.txt]
- Preserve existing [type signatures / API contracts / variable names]

Done When:
[Exact condition that confirms the change worked correctly]
```

## Example

```
File: src/auth/login.ts
Function: handleLogin

Current Behavior:
Accepts username/password, returns user object or throws on failure.

Desired Change:
Add rate limiting — max 5 attempts per IP per minute.

Scope:
Only modify handleLogin function.
Do NOT touch: logout, register, or any other auth functions.

Constraints:
- TypeScript strict mode
- No new dependencies
- Preserve existing return type

Done When:
6th login attempt from same IP within 60s returns 429 status.
```
