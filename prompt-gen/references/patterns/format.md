# Format Patterns

6 patterns that cause format-related failures.

## 14. Missing Output Format

**Detect:** No specification of output structure
**Risk:** AI chooses arbitrary format, requires re-prompt to fix
**Fix:** "3 bullet points, each under 20 words, with a one-sentence summary at top"

## 15. Implicit Length

**Detect:** "Write a summary" without length constraint
**Risk:** AI writes 500 words when 50 were needed
**Fix:** "Write a summary in exactly 3 sentences"

## 16. No Role Assignment

**Detect:** Prompt jumps straight to task without establishing expertise
**Risk:** Generic response without domain expertise
**Fix:** "You are a senior backend engineer specializing in Node.js and PostgreSQL"

## 17. Vague Aesthetic Adjectives

**Detect:** "Make it look professional" or "clean design"
**Risk:** Subjective interpretation, misaligned with user's vision
**Fix:** "Monochrome palette, 16px base font, 24px line height, no decorative elements"

## 18. No Negative Prompts for Image AI

**Detect:** Image prompt with no exclusions
**Risk:** Watermarks, blur, extra fingers, distortion
**Fix:** "no watermark, no blur, no extra fingers, no distortion, no text overlay"

## 19. Prose Prompt for Midjourney

**Detect:** Full descriptive sentences sent to Midjourney
**Risk:** MJ parses poorly, misses key descriptors
**Fix:** "subject, style, mood, lighting, composition, --ar 16:9 --v 6"
