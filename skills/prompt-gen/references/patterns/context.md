# Context Patterns

6 patterns that cause context-related failures.

## 8. Assumed Prior Knowledge

**Detect:** "Continue where we left off" without context
**Risk:** AI starts fresh, ignores prior decisions
**Fix:** Include memory block with all prior decisions

## 9. No Project Context

**Detect:** Generic task without domain specifics
**Risk:** Generic output that doesn't fit the actual situation
**Fix:** "PM role at B2B fintech, 2yr SWE experience, shipped 3 features as tech lead"

## 10. Forgotten Stack

**Detect:** New prompt contradicts prior technology choices
**Risk:** AI suggests incompatible solutions
**Fix:** Always include established stack in context block

## 11. Hallucination Invite

**Detect:** "What do experts say about X?" without grounding
**Risk:** AI fabricates citations, quotes, or statistics
**Fix:** "Cite only sources you are certain of. If uncertain, say [uncertain]."

## 12. Undefined Audience

**Detect:** "Write something for users" without specifics
**Risk:** Wrong tone, wrong technical level, wrong assumptions
**Fix:** "Non-technical B2B buyers, no coding knowledge, decision-maker level"

## 13. No Mention of Prior Failures

**Detect:** Prompt doesn't mention what was already tried
**Risk:** AI suggests the same failed approach
**Fix:** "I already tried X and it didn't work because Y. Do not suggest X."
