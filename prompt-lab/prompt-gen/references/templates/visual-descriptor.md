# Visual Descriptor

Used by: [[references/tools/midjourney]], [[references/tools/dalle]]
Patterns: [[references/patterns/format]]

## When to Use

Image or video generation tools (Midjourney, DALL-E 3, Sora, Runway).

## Structure

```
Subject: [Main subject — specific, not vague]
Action/Pose: [What the subject is doing]
Setting: [Where the scene takes place]
Style: [photorealistic / cinematic / anime / oil painting / vector]
Mood: [dramatic / serene / eerie / joyful]
Lighting: [golden hour / studio / neon / overcast / candlelight]
Color Palette: [dominant colors or named palette]
Composition: [wide shot / close-up / aerial / Dutch angle]
Aspect Ratio: [16:9 / 1:1 / 9:16 / 4:3]
Negative Prompts: [blurry, watermark, extra fingers, distortion]
Style Reference: [artist / film / aesthetic reference if applicable]
```

## Tool-Specific Syntax

**Midjourney:**
Comma-separated descriptors, not prose. Add `--ar`, `--style`, `--v 6` at end.

**DALL-E 3:**
Prose works well. Add "do not include any text in the image" unless text is needed.

**Stable Diffusion:**
Use `(word:1.3)` weight syntax. Negative prompt is mandatory.

**Sora / video:**
Add camera movement, duration in seconds, and cut style.
