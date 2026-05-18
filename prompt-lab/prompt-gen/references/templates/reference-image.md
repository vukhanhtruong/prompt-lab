# Reference Image Editing

Used by: [[references/tools/midjourney]], [[references/tools/dalle]], [[references/tools/stable-diffusion]]
Patterns: [[references/patterns/format]]

## When to Use

Editing an existing image with a reference. Completely different from generation — describe only the change, not the whole scene.

## Before Writing

Tell the user: "Attach your reference image to [tool name] before sending this prompt."

## Structure

```
Reference image: [attached / URL]
What to keep exactly the same: [list everything that must not change]
What to change: [specific edit only — be precise]
How much to change: [subtle / moderate / significant]
Style consistency: maintain the exact style, lighting, and mood of the reference
Negative prompt: [what to avoid introducing]
```

## Tool-Specific Notes

**Midjourney:**
Use `--cref [image URL]` for character reference or `--sref` for style reference.

**DALL-E 3:**
Use the Edit endpoint, not Generate. User must have image editing enabled.

**Stable Diffusion:**
Use img2img mode, not txt2img. Set denoising strength 0.3-0.6.

## Example

```
Reference image: [attached portrait photo]
What to keep exactly the same: face, hair, clothing, background, lighting
What to change: head angle — rotate from facing left to facing straight forward
How much to change: subtle, preserve all facial features exactly
Style consistency: maintain photorealistic style, same lighting direction
Negative prompt: no new elements, no style changes, no background changes
```
