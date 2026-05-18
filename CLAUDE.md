# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Type

This is a **skill monorepo**, not a code project. All content is markdown-based skill definitions.

Two skills:
- **prompt-gen** — Generate optimized prompts for AI tools
- **prompt-eval** — Evaluate prompts using Anthropic's methodology

## Branches

| Branch | Purpose | Structure |
|--------|---------|-----------|
| develop | Working branch | `skills/`, `docs/`, `scripts/` |
| main | Published (user-facing) | Skills at root level, flat |

Users install from main via `npx skills install vukhanhtruong/prompt-lab`.

## Commands

```bash
# Publish skills from develop to main
./scripts/publish-skills.sh "commit message"

# Create release (triggers GitHub Actions zip creation)
git checkout main && git tag v1.x.x && git push origin v1.x.x
```

## Skill Structure

```
<skill>/
├── SKILL.md           # Entry point (loaded by Claude)
└── references/        # Loaded on-demand via markdown links
```

SKILL.md sections: YAML frontmatter → CORE RULES → WORKFLOW → OUTPUT LOCK

## Reference Implementation

prompt-gen is based on [prompt-master](https://github.com/nidhinjs/prompt-master). Compare against it when behavior diverges.
