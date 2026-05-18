# Template Selection

Choose the template that matches the task type.

## Quick Reference

| Template | Best For |
|----------|----------|
| [[references/templates/rtf]] | Simple one-shot tasks |
| [[references/templates/co-star]] | Professional documents, business writing |
| [[references/templates/risen]] | Complex multi-step projects |
| [[references/templates/crispe]] | Creative work, brand voice |
| [[references/templates/chain-of-thought]] | Logic, math, analysis, debugging |
| [[references/templates/few-shot]] | Consistent structured output |
| [[references/templates/file-scope]] | IDE code editing (Cursor, Copilot) |
| [[references/templates/react-stop]] | Autonomous agents (Claude Code) |
| [[references/templates/visual-descriptor]] | Image generation (Midjourney, DALL-E) |
| [[references/templates/reference-image]] | Editing existing images |
| [[references/templates/comfyui]] | ComfyUI/Stable Diffusion workflows |
| [[references/templates/prompt-decompiler]] | Breaking down existing prompts |
| [[references/templates/opus-task-brief]] | Complex tasks on Opus models |

## Decision Tree

1. Is this a code editing task in an IDE?
   - Yes: [[references/templates/file-scope]]
2. Is this an autonomous agent task?
   - Yes: [[references/templates/react-stop]] or [[references/templates/opus-task-brief]]
3. Is this image generation?
   - Yes: [[references/templates/visual-descriptor]] or [[references/templates/comfyui]]
4. Is this a simple, clear task?
   - Yes: [[references/templates/rtf]]
5. Is this professional/business writing?
   - Yes: [[references/templates/co-star]]
6. Is this a multi-step project?
   - Yes: [[references/templates/risen]]
7. Is this creative work with brand voice?
   - Yes: [[references/templates/crispe]]
8. Does it require reasoning/analysis?
   - Yes: [[references/templates/chain-of-thought]]
9. Is format easier to show than describe?
   - Yes: [[references/templates/few-shot]]
