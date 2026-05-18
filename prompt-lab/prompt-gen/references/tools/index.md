# Tool Routing

Select the tool profile that matches the user's target AI system.

## By Type

| Type | Tools |
|------|-------|
| LLM | [[references/tools/claude]], [[references/tools/chatgpt]], [[references/tools/gemini]] |
| Reasoning | [[references/tools/o3]] |
| Agentic | [[references/tools/claude-code]] |
| IDE | [[references/tools/cursor]], [[references/tools/copilot]] |
| Image | [[references/tools/midjourney]], [[references/tools/dalle]], [[references/tools/stable-diffusion]] |

## Quick Reference

| Tool | Template | Key Patterns |
|------|----------|--------------|
| claude | [[references/templates/rtf]] | task, context |
| claude-code | [[references/templates/file-scope]] | agentic, scope |
| chatgpt | [[references/templates/rtf]] | task, context |
| o3 | [[references/templates/chain-of-thought]] | reasoning |
| gemini | [[references/templates/rtf]] | task, context |
| cursor | [[references/templates/file-scope]] | agentic, scope |
| copilot | [[references/templates/file-scope]] | scope |
| midjourney | [[references/templates/visual-descriptor]] | format |
| dalle | [[references/templates/visual-descriptor]] | format |
| stable-diffusion | [[references/templates/comfyui]] | format |

## Decision Tree

1. Is it a coding agent (runs commands, edits files autonomously)?
   - Yes: Use agentic tool profile (claude-code, cursor)
2. Is it an image/video generator?
   - Yes: Use image tool profile (midjourney, dalle, stable-diffusion)
3. Is it a reasoning model (o3, o4-mini, DeepSeek-R1)?
   - Yes: Use reasoning tool profile (no CoT instructions)
4. Otherwise: Use LLM tool profile (claude, chatgpt, gemini)
