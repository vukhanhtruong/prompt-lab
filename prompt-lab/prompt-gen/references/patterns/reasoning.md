# Reasoning Patterns

5 patterns that cause reasoning-related failures.

## 26. No CoT for Logic Task

**Detect:** Logic/analysis task without reasoning instruction
**Risk:** AI jumps to wrong conclusion, first-impression bias
**Fix:** "Think through both approaches step by step before recommending"

## 27. Adding CoT to Reasoning Models

**Detect:** "Think step by step" sent to o3/o4-mini/DeepSeek-R1
**Risk:** CoT instructions degrade output — these models reason internally
**Fix:** Remove it. Short clean instructions only.

## 28. Expecting Inter-session Memory

**Detect:** "You already know my project" without context
**Risk:** AI has no memory between sessions — starts fresh
**Fix:** Always re-provide context in every new session

## 29. Contradicting Prior Work

**Detect:** New prompt ignores architecture/decisions from earlier
**Risk:** AI suggests conflicting approaches, wastes work
**Fix:** Include memory block with all established decisions

## 30. No Grounding Rule for Factual Tasks

**Detect:** "Summarize what experts say" without accuracy constraint
**Risk:** AI fabricates statistics, quotes, or citations
**Fix:** "Use only information you are highly confident is accurate. Say [uncertain] if not."
