# ReAct + Stop Conditions

Patterns: [agentic](references/patterns/agentic.md), [scope](references/patterns/scope.md)

## When to Use

Autonomous agents (Claude Code, Devin, AutoGPT) that take actions. Stop conditions prevent runaway loops.

## Structure

```
Objective:
[Single, unambiguous goal in one sentence]

Starting State:
[Current file structure / codebase state / environment]

Target State:
[What should exist when the agent is done]

Allowed Actions:
- [Specific action the agent may take]
- Install only packages listed in [requirements.txt / package.json]

Forbidden Actions:
- Do NOT modify files outside [directory/scope]
- Do NOT run the dev server or deploy
- Do NOT push to git
- Do NOT delete files without showing a diff first

Stop Conditions:
Pause and ask for human review when:
- A file would be permanently deleted
- A new external service or API needs integration
- Two valid implementation paths exist
- An error cannot be resolved in 2 attempts
- The task requires changes outside the stated scope

Checkpoints:
After each major step, output: [what was completed]
At the end, output a full summary of every file changed.
```
