# ComfyUI

Used by: [[references/tools/stable-diffusion]]
Patterns: [[references/patterns/format]]

## When to Use

ComfyUI node-based workflows. Always output Positive and Negative prompts as separate blocks.

## Before Writing

Ask: "Which checkpoint model are you using? (SD 1.5, SDXL, Flux, or other)"

## Model-Specific Notes

**SD 1.5:**
Shorter prompts, under 75 tokens per block, use (word:weight) syntax.

**SDXL:**
Handles longer prompts, supports more natural language alongside weighted syntax.

**Flux:**
Natural language works well, less reliance on weighted syntax.

## Structure

```
POSITIVE PROMPT:
[subject], [style], [mood], [lighting], [composition], [quality boosters]

NEGATIVE PROMPT:
[what to exclude: blurry, low quality, watermark, extra limbs, bad anatomy]

CHECKPOINT: [model name]
SAMPLER: Euler a
CFG SCALE: 7
STEPS: 20-30
RESOLUTION: [width x height — divisible by 64]
```

## Quality Boosters

Add to positive prompt:
```
highly detailed, sharp focus, 8k, masterpiece
```

## Standard Negative

```
blurry, low quality, watermark, extra limbs, bad anatomy, distorted, oversaturated, text, logo
```
