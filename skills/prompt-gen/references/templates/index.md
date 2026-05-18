# Template Selection

Choose the template that matches the task type.

## Quick Reference

| Template | Best For |
|----------|----------|
| [rtf](references/templates/rtf.md) | Simple one-shot tasks |
| [co-star](references/templates/co-star.md) | Professional documents, business writing |
| [risen](references/templates/risen.md) | Complex multi-step projects |
| [crispe](references/templates/crispe.md) | Creative work, brand voice |
| [chain-of-thought](references/templates/chain-of-thought.md) | Logic, math, analysis, debugging |
| [few-shot](references/templates/few-shot.md) | Consistent structured output |
| [file-scope](references/templates/file-scope.md) | IDE code editing (Cursor, Copilot) |
| [react-stop](references/templates/react-stop.md) | Simple autonomous tasks (single-file fixes) |
| [visual-descriptor](references/templates/visual-descriptor.md) | Image generation (Midjourney, DALL-E) |
| [reference-image](references/templates/reference-image.md) | Editing existing images |
| [comfyui](references/templates/comfyui.md) | ComfyUI/Stable Diffusion workflows |
| [prompt-decompiler](references/templates/prompt-decompiler.md) | Breaking down existing prompts |
| [opus-task-brief](references/templates/opus-task-brief.md) | Complex tasks on Opus models |

## Decision Tree

1. Is this a code editing task in an IDE?
   - Yes: [file-scope](references/templates/file-scope.md)
2. Is this an autonomous agent task (Claude Code, Devin)?
   - Complex/multi-step (build, create, implement): [opus-task-brief](references/templates/opus-task-brief.md)
   - Simple/single-file (fix, update, change): [react-stop](references/templates/react-stop.md)
3. Is this image generation?
   - Yes: [visual-descriptor](references/templates/visual-descriptor.md) or [comfyui](references/templates/comfyui.md)
4. Is this a simple, clear task?
   - Yes: [rtf](references/templates/rtf.md)
5. Is this professional/business writing?
   - Yes: [co-star](references/templates/co-star.md)
6. Is this a multi-step project?
   - Yes: [risen](references/templates/risen.md)
7. Is this creative work with brand voice?
   - Yes: [crispe](references/templates/crispe.md)
8. Does it require reasoning/analysis?
   - Yes: [chain-of-thought](references/templates/chain-of-thought.md)
9. Is format easier to show than describe?
   - Yes: [few-shot](references/templates/few-shot.md)
