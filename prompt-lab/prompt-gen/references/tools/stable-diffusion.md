# Stable Diffusion / SDXL

Type: Image
Template: [comfyui](references/templates/comfyui.md)
Patterns: [format](references/patterns/format.md)

## Characteristics

- Weight syntax: (word:1.3) for emphasis
- Requires separate positive and negative prompts
- CFG scale affects prompt adherence (7-12 typical)
- Resolution must be divisible by 64

## Guidance

- Positive prompt: subject, style, quality boosters
- Negative prompt: always include quality exclusions
- Use weighted syntax for emphasis
- Specify checkpoint model when known

## Required Additions

Negative prompt (always include):
```
blurry, low quality, watermark, extra limbs, bad anatomy, distorted, oversaturated, text, logo
```

Quality boosters in positive prompt:
```
highly detailed, sharp focus, 8k, masterpiece
```

## Syntax

```
POSITIVE:
[subject], [style], [mood], [lighting], highly detailed, sharp focus, 8k

NEGATIVE:
blurry, low quality, watermark, extra limbs, bad anatomy, distorted
```

## Settings

- Sampler: Euler a (recommended start)
- CFG Scale: 7 (increase for stricter adherence)
- Steps: 20-30

## Anti-patterns

- NEVER skip the negative prompt — quality will suffer
- NEVER use resolutions not divisible by 64
