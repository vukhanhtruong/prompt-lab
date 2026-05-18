# Scope Patterns

6 patterns that cause scope-related failures.

## 20. No Scope Boundary

**Detect:** "Fix my app" without specifying what or where
**Risk:** AI touches unrelated code, breaks working features
**Fix:** "Fix only the login form validation in `src/auth.js`. Touch nothing else."

## 21. No Stack Constraints

**Detect:** "Build a React component" without version or dependencies
**Risk:** AI uses incompatible versions or adds unwanted dependencies
**Fix:** "React 18, TypeScript strict, no external libraries, Tailwind only"

## 22. No Stop Condition for Agents

**Detect:** Agentic prompt with no pause/stop triggers
**Risk:** Runaway loops, credit waste, scope explosion
**Fix:** Explicit stop conditions + checkpoint output after each step

## 23. No File Path for IDE AI

**Detect:** "Update the login function" without path
**Risk:** AI edits wrong file or creates new file
**Fix:** "Update `handleLogin()` in `src/pages/Login.tsx` only"

## 24. Wrong Template for Tool

**Detect:** GPT-style prose prompt used in Cursor/Midjourney
**Risk:** Tool can't parse, output is garbage
**Fix:** Adapt to tool-specific template (File-Scope, Visual-Descriptor)

## 25. Pasting Entire Codebase

**Detect:** Full repo context in every prompt
**Risk:** Token waste, AI loses focus, important context buried
**Fix:** Scope to only the relevant function and file
