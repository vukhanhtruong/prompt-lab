# Agentic Patterns

7 patterns that cause agentic workflow failures.

## 31. No Starting State

**Detect:** "Build me a REST API" without current project state
**Risk:** AI makes wrong assumptions about what exists
**Fix:** "Empty Node.js project, Express installed, `src/app.js` exists"

## 32. No Target State

**Detect:** "Add authentication" without specific deliverables
**Risk:** AI delivers different scope than expected
**Fix:** "`/src/middleware/auth.js` with JWT verify. `POST /login` and `POST /register` in `/src/routes/auth.js`"

## 33. Silent Agent

**Detect:** No progress output requirement
**Risk:** Agent runs for 10 minutes with no visibility into what it's doing
**Fix:** "After each step output: [what was completed]"

## 34. Unlocked Filesystem

**Detect:** No file restrictions specified
**Risk:** Agent edits config files, .env, or unrelated code
**Fix:** "Only edit files inside `src/`. Do not touch `package.json`, `.env`, or any config."

## 35. No Human Review Trigger

**Detect:** Agent decides everything autonomously
**Risk:** Destructive actions without approval
**Fix:** "Stop and ask before: deleting any file, adding any dependency, changing schema"

## 36. Vague First Turn on Opus

**Detect:** "Fix the auth bug" with no scope, files, or criteria
**Risk:** Opus reads literally — vague prompt produces narrow/wrong output
**Fix:** Use Opus Task Brief template. Front-load intent, scope, constraints, acceptance criteria.

## 37. Context Rot on Long Sessions

**Detect:** 60+ turns of corrections in same session
**Risk:** Earlier context degraded, AI contradicts itself
**Fix:** New task = new session. Use /rewind instead of correcting. /compact at ~50% context.
