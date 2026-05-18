# Midjourney

Type: Image
Template: [[references/templates/visual-descriptor]]
Patterns: [[references/patterns/format]]

## Characteristics

- Comma-separated descriptors, not prose
- Parameters go at the end: --ar, --style, --v 6
- Strong at artistic interpretation
- Version 6 is more literal than previous versions

## Guidance

- Subject first, then style, mood, lighting, composition
- Use specific artist or aesthetic references
- Negative prompts via --no flag
- Aspect ratio via --ar (16:9, 1:1, 9:16)

## Required Additions

Always include at end:
```
--ar [aspect ratio] --v 6
```

For quality:
```
--q 2
```

## Syntax

```
[subject], [action], [setting], [style], [mood], [lighting], [composition] --ar 16:9 --v 6
```

## Anti-patterns

- Do NOT use full prose sentences — use comma-separated keywords
- Do NOT forget aspect ratio for non-square images
- Do NOT skip style descriptors
