# Opus Task Brief

Used by: [[references/tools/claude]], [[references/tools/claude-code]]
Patterns: [[references/patterns/agentic]], [[references/patterns/task]]

## When to Use

Complex, multi-step, or agentic tasks on Opus models. Front-loads everything so the first turn is the only turn.

## Structure

```
## Objective
[What needs to be built, fixed, or produced — one clear sentence]

## Context
[What exists now — relevant files, current behavior, what was tried]

## Target State
[What done looks like — specific files, behavior, tests passing]

## Scope
- Work only in: [specific files and directories]
- Do NOT touch: [forbidden files]

## Constraints
- [Stack version, naming conventions, no new dependencies]
- Only make changes directly requested

## Acceptance Criteria
- [ ] [Binary check 1]
- [ ] [Binary check 2]
- [ ] [Binary check 3]

## Stop Conditions
Stop and ask before:
- Deleting any file
- Adding any dependency
- Modifying database schema

## Progress
After each completed step: [what was done] — [file(s) affected]
```

## Thinking Depth

Add only when needed:
- Hard multi-step task: "Think carefully and step-by-step before starting."
- Simple targeted change: "Prioritize responding quickly."
- Default: say nothing — adaptive thinking calibrates itself.
