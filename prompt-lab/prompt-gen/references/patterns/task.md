# Task Patterns

7 patterns that cause task-related failures.

## 1. Vague Task Verb

**Detect:** Task uses verbs like "help", "work on", "deal with"
**Risk:** AI interprets task differently than intended, output misses the mark
**Fix:** Convert to precise operations: "Refactor `getUserData()` to use async/await"

## 2. Two Tasks in One Prompt

**Detect:** Prompt contains "AND" connecting distinct actions, e.g., "explain AND rewrite"
**Risk:** One task done well, other rushed or skipped
**Fix:** Split into two prompts: explain first, rewrite second

## 3. No Success Criteria

**Detect:** Task ends with "make it better" or no definition of done
**Risk:** Subjective output, requires back-and-forth to clarify
**Fix:** "Done when the function passes existing unit tests and handles null input"

## 4. Over-permissive Agent

**Detect:** "Do whatever it takes" or no action constraints
**Risk:** Agent takes unexpected destructive actions
**Fix:** Explicit allowed actions list + explicit forbidden actions list

## 5. Emotional Task Description

**Detect:** "It's totally broken", "fix everything", emotional language
**Risk:** AI can't identify the actual problem from emotion
**Fix:** "Throws uncaught TypeError on line 43 when `user` is null"

## 6. Build-the-Whole-Thing

**Detect:** "Build my entire app" or massive scope in one prompt
**Risk:** Shallow implementation across everything, nothing done well
**Fix:** Break into sequential prompts: scaffold, core feature, polish

## 7. Implicit Reference

**Detect:** "The other thing we discussed" or references to prior context
**Risk:** AI has no memory of "the thing" — hallucinates or asks
**Fix:** Always restate the full task in current prompt
