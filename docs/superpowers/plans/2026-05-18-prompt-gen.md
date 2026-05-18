# prompt-gen Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create the prompt-gen skill that generates optimized prompts for any AI tool.

**Architecture:** Modular markdown references with [[links]]. SKILL.md routes to tools/index.md, which routes to specific tool files. Tool files link to templates and patterns.

**Tech Stack:** Markdown files only.

**Spec:** `docs/superpowers/specs/2026-05-18-prompt-lab-design.md`

**Source:** prompt-master repo (MIT) — https://github.com/nidhinjs/prompt-master

---

## File Structure

```
prompt-lab/
├── prompt-gen/
│   ├── SKILL.md
│   └── references/
│       ├── tools/
│       │   ├── index.md
│       │   ├── claude.md
│       │   ├── claude-code.md
│       │   ├── chatgpt.md
│       │   ├── o3.md
│       │   ├── cursor.md
│       │   ├── midjourney.md
│       │   ├── dalle.md
│       │   ├── stable-diffusion.md
│       │   ├── gemini.md
│       │   └── copilot.md
│       ├── templates/
│       │   ├── index.md
│       │   ├── rtf.md
│       │   ├── co-star.md
│       │   ├── risen.md
│       │   ├── crispe.md
│       │   ├── chain-of-thought.md
│       │   ├── few-shot.md
│       │   ├── file-scope.md
│       │   ├── react-stop.md
│       │   ├── visual-descriptor.md
│       │   ├── reference-image.md
│       │   ├── comfyui.md
│       │   ├── prompt-decompiler.md
│       │   └── opus-task-brief.md
│       └── patterns/
│           ├── index.md
│           ├── task.md
│           ├── context.md
│           ├── format.md
│           ├── scope.md
│           ├── reasoning.md
│           └── agentic.md
├── LICENSE
└── README.md
```

**Total files:** 34

---

## Task 1: Project Scaffold

**Files:**
- Create: `prompt-lab/LICENSE`
- Create: `prompt-lab/README.md`
- Create: directories for prompt-gen

- [ ] **Step 1: Create directory structure**

Run: `mkdir -p prompt-lab/prompt-gen/references/{tools,templates,patterns}`

- [ ] **Step 2: Create LICENSE**

Write MIT license with prompt-master attribution to `prompt-lab/LICENSE`

- [ ] **Step 3: Create README.md**

Write installation and usage docs to `prompt-lab/README.md`

- [ ] **Step 4: Verify structure**

Run: `find prompt-lab -type d | sort`

- [ ] **Step 5: Commit**

```bash
git add prompt-lab/
git commit -m "feat: scaffold prompt-lab project"
```

---

## Task 2: prompt-gen SKILL.md

**Files:**
- Create: `prompt-lab/prompt-gen/SKILL.md`

**Reference:** prompt-master SKILL.md structure (CORE RULES / WORKFLOW / OUTPUT LOCK)

- [ ] **Step 1: Write SKILL.md**

Include:
- Frontmatter (name, version, description)
- CORE RULES section (identity, constraints, output format)
- WORKFLOW section (9 dimensions, tool routing, template loading, pattern checks)
- OUTPUT LOCK section (verification checklist, self-check question)
- References section with [[links]]

- [ ] **Step 2: Verify links point to correct paths**

All links must use `[[references/...]]` format, no `.md` extension.

- [ ] **Step 3: Commit**

```bash
git add prompt-lab/prompt-gen/SKILL.md
git commit -m "feat(prompt-gen): add SKILL.md with core rules and workflow"
```

---

## Task 3: Tools Index + LLM Tools

**Files:**
- Create: `prompt-lab/prompt-gen/references/tools/index.md`
- Create: `prompt-lab/prompt-gen/references/tools/claude.md`
- Create: `prompt-lab/prompt-gen/references/tools/claude-code.md`
- Create: `prompt-lab/prompt-gen/references/tools/chatgpt.md`
- Create: `prompt-lab/prompt-gen/references/tools/o3.md`
- Create: `prompt-lab/prompt-gen/references/tools/gemini.md`

**Reference:** prompt-master tool file format

- [ ] **Step 1: Create tools/index.md**

Routing table with tool types (LLM, Reasoning, Agentic, IDE, Image)

- [ ] **Step 2: Create claude.md**

Type: LLM, Template: [[references/templates/rtf]], Patterns: task, context

- [ ] **Step 3: Create claude-code.md**

Type: Agentic, Template: [[references/templates/file-scope]], Patterns: agentic, scope

- [ ] **Step 4: Create chatgpt.md**

Type: LLM, Template: [[references/templates/rtf]], Patterns: task, context

- [ ] **Step 5: Create o3.md**

Type: Reasoning, Template: [[references/templates/chain-of-thought]], Patterns: reasoning

- [ ] **Step 6: Create gemini.md**

Type: LLM, Template: [[references/templates/rtf]], Patterns: task, context

- [ ] **Step 7: Commit**

```bash
git add prompt-lab/prompt-gen/references/tools/
git commit -m "feat(prompt-gen): add tools index and LLM tool profiles"
```

---

## Task 4: IDE + Image Tools

**Files:**
- Create: `prompt-lab/prompt-gen/references/tools/cursor.md`
- Create: `prompt-lab/prompt-gen/references/tools/copilot.md`
- Create: `prompt-lab/prompt-gen/references/tools/midjourney.md`
- Create: `prompt-lab/prompt-gen/references/tools/dalle.md`
- Create: `prompt-lab/prompt-gen/references/tools/stable-diffusion.md`

- [ ] **Step 1: Create cursor.md**

Type: IDE, Template: [[references/templates/file-scope]], Patterns: agentic, scope

- [ ] **Step 2: Create copilot.md**

Type: IDE, Template: [[references/templates/file-scope]], Patterns: scope

- [ ] **Step 3: Create midjourney.md**

Type: Image, Template: [[references/templates/visual-descriptor]], Patterns: format

- [ ] **Step 4: Create dalle.md**

Type: Image, Template: [[references/templates/visual-descriptor]], Patterns: format

- [ ] **Step 5: Create stable-diffusion.md**

Type: Image, Template: [[references/templates/comfyui]], Patterns: format

- [ ] **Step 6: Commit**

```bash
git add prompt-lab/prompt-gen/references/tools/
git commit -m "feat(prompt-gen): add IDE and image tool profiles"
```

---

## Task 5: Templates Index + Core Templates

**Files:**
- Create: `prompt-lab/prompt-gen/references/templates/index.md`
- Create: `prompt-lab/prompt-gen/references/templates/rtf.md`
- Create: `prompt-lab/prompt-gen/references/templates/co-star.md`
- Create: `prompt-lab/prompt-gen/references/templates/risen.md`
- Create: `prompt-lab/prompt-gen/references/templates/crispe.md`
- Create: `prompt-lab/prompt-gen/references/templates/chain-of-thought.md`
- Create: `prompt-lab/prompt-gen/references/templates/few-shot.md`

**Reference:** prompt-master templates

- [ ] **Step 1: Create templates/index.md**

Template selection guide with use cases

- [ ] **Step 2: Create rtf.md (Role-Task-Format)**

Structure + example

- [ ] **Step 3: Create co-star.md**

Context-Objective-Style-Tone-Audience-Response structure

- [ ] **Step 4: Create risen.md**

Role-Instructions-Steps-End goal-Narrowing structure

- [ ] **Step 5: Create crispe.md**

Capacity-Role-Insight-Statement-Personality-Experiment structure

- [ ] **Step 6: Create chain-of-thought.md**

Step-by-step reasoning template

- [ ] **Step 7: Create few-shot.md**

Example-based prompting template

- [ ] **Step 8: Commit**

```bash
git add prompt-lab/prompt-gen/references/templates/
git commit -m "feat(prompt-gen): add templates index and core templates"
```

---

## Task 6: Agentic + Image Templates

**Files:**
- Create: `prompt-lab/prompt-gen/references/templates/file-scope.md`
- Create: `prompt-lab/prompt-gen/references/templates/react-stop.md`
- Create: `prompt-lab/prompt-gen/references/templates/opus-task-brief.md`
- Create: `prompt-lab/prompt-gen/references/templates/visual-descriptor.md`
- Create: `prompt-lab/prompt-gen/references/templates/reference-image.md`
- Create: `prompt-lab/prompt-gen/references/templates/comfyui.md`
- Create: `prompt-lab/prompt-gen/references/templates/prompt-decompiler.md`

- [ ] **Step 1: Create file-scope.md**

Agentic file boundary template for Claude Code/Cursor

- [ ] **Step 2: Create react-stop.md**

ReAct pattern with stop tokens

- [ ] **Step 3: Create opus-task-brief.md**

Task briefing for Opus-class models

- [ ] **Step 4: Create visual-descriptor.md**

Image prompt descriptor template

- [ ] **Step 5: Create reference-image.md**

Reference image prompting template

- [ ] **Step 6: Create comfyui.md**

ComfyUI/SD workflow template

- [ ] **Step 7: Create prompt-decompiler.md**

Reverse-engineer prompt template

- [ ] **Step 8: Commit**

```bash
git add prompt-lab/prompt-gen/references/templates/
git commit -m "feat(prompt-gen): add agentic and image templates"
```

---

## Task 7: Patterns

**Files:**
- Create: `prompt-lab/prompt-gen/references/patterns/index.md`
- Create: `prompt-lab/prompt-gen/references/patterns/task.md`
- Create: `prompt-lab/prompt-gen/references/patterns/context.md`
- Create: `prompt-lab/prompt-gen/references/patterns/format.md`
- Create: `prompt-lab/prompt-gen/references/patterns/scope.md`
- Create: `prompt-lab/prompt-gen/references/patterns/reasoning.md`
- Create: `prompt-lab/prompt-gen/references/patterns/agentic.md`

**Reference:** prompt-master patterns (37 total across 6 categories)

- [ ] **Step 1: Create patterns/index.md**

Pattern category overview with diagnostic use

- [ ] **Step 2: Create task.md**

7 task patterns (Detect/Risk/Fix format)

- [ ] **Step 3: Create context.md**

6 context patterns

- [ ] **Step 4: Create format.md**

6 format patterns

- [ ] **Step 5: Create scope.md**

6 scope patterns

- [ ] **Step 6: Create reasoning.md**

5 reasoning patterns

- [ ] **Step 7: Create agentic.md**

7 agentic patterns

- [ ] **Step 8: Commit**

```bash
git add prompt-lab/prompt-gen/references/patterns/
git commit -m "feat(prompt-gen): add pattern diagnostic files"
```

---

## Task 8: Final Verification

- [ ] **Step 1: Count files**

Run: `find prompt-lab/prompt-gen -name "*.md" | wc -l`

Expected: 33 files (1 SKILL.md + 11 tools + 14 templates + 7 patterns)

- [ ] **Step 2: Verify all [[links]] resolve**

Run: `grep -r '\[\[' prompt-lab/prompt-gen/ | grep -v index.md`

Check each link points to an existing file.

- [ ] **Step 3: Test skill loading**

In Claude Code, verify SKILL.md loads and routes correctly.

- [ ] **Step 4: Final commit**

```bash
git add prompt-lab/
git commit -m "feat(prompt-gen): complete v1 implementation"
```

---

## Execution Notes

- Content for each file comes from prompt-master repo (MIT licensed)
- All [[links]] use `references/` prefix, no `.md` extension
- Tool files must link to at least one template and one pattern category
- Each pattern uses Detect/Risk/Fix format
