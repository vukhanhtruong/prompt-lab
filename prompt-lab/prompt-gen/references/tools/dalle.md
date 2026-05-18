# DALL-E 3

Type: Image
Template: [[references/templates/visual-descriptor]]
Patterns: [[references/patterns/format]]

## Characteristics

- Prose works well — more natural language than Midjourney
- Adds text to images by default unless told not to
- Strong at following detailed descriptions
- Good at photorealistic and artistic styles

## Guidance

- Use descriptive prose for complex scenes
- Always specify if text should be excluded
- Be explicit about style (photorealistic, illustration, etc.)
- Include composition details for specific framing

## Required Additions

To prevent unwanted text:
```
Do not include any text in the image.
```

## Syntax

```
[Descriptive prose about the scene, subject, style, mood, lighting]

Do not include any text in the image.
```

## Anti-patterns

- Do NOT forget to exclude text if unwanted
- Do NOT use Midjourney-style comma lists — prose works better
