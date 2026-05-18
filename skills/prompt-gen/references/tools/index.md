# Tool Routing

Select the tool profile that matches the user's target AI system.

## By Type

| Type | Tools |
|------|-------|
| LLM | [claude](references/tools/claude.md), [chatgpt](references/tools/chatgpt.md), [gemini](references/tools/gemini.md) |
| Reasoning | [o3](references/tools/o3.md) |
| Agentic | [claude-code](references/tools/claude-code.md) |
| IDE | [cursor](references/tools/cursor.md), [copilot](references/tools/copilot.md) |
| Image | [midjourney](references/tools/midjourney.md), [dalle](references/tools/dalle.md), [stable-diffusion](references/tools/stable-diffusion.md) |

## Quick Reference

| Tool | Template | Key Patterns |
|------|----------|--------------|
| claude (simple) | [rtf](references/templates/rtf.md) | task, context |
| claude (complex/Opus) | [opus-task-brief](references/templates/opus-task-brief.md) | task, context |
| claude-code (complex) | [opus-task-brief](references/templates/opus-task-brief.md) | agentic, scope |
| claude-code (simple) | [react-stop](references/templates/react-stop.md) | agentic, scope |
| chatgpt | [rtf](references/templates/rtf.md) | task, context |
| o3 / reasoning models | [rtf](references/templates/rtf.md) (minimal) | reasoning |
| gemini | [rtf](references/templates/rtf.md) | task, context |
| cursor | [file-scope](references/templates/file-scope.md) | agentic, scope |
| copilot | [file-scope](references/templates/file-scope.md) | scope |
| midjourney | [visual-descriptor](references/templates/visual-descriptor.md) | format |
| dalle | [visual-descriptor](references/templates/visual-descriptor.md) | format |
| stable-diffusion | [comfyui](references/templates/comfyui.md) | format |

## Decision Tree

1. Is it a coding agent (runs commands, edits files autonomously)?
   - Yes: Use agentic tool profile (claude-code, cursor)
2. Is it an image/video generator?
   - Yes: Use image tool profile (midjourney, dalle, stable-diffusion)
3. Is it a reasoning model (o3, o4-mini, DeepSeek-R1)?
   - Yes: Use reasoning tool profile (no CoT instructions)
4. Otherwise: Use LLM tool profile (claude, chatgpt, gemini)
