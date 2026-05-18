# prompt-lab

Two skills for prompt engineering:

- **prompt-gen** - Generate optimized prompts for any AI tool
- **prompt-eval** - Evaluate prompts using Anthropic's methodology

## Installation

### Claude.ai (browser)

1. Download this repo as ZIP
2. Extract `prompt-gen/` or `prompt-eval/` folder
3. Go to claude.ai > Sidebar > Customize > Skills > Upload a Skill
4. Upload the extracted folder

### Claude Code

```bash
# Install prompt-gen skill
npx skills install vukhanhtruong/prompt-lab --skill prompt-gen --agent claude-code -y

# Install prompt-eval skill
npx skills install vukhanhtruong/prompt-lab --skill prompt-eval --agent claude-code -y

# Install both skills
npx skills install vukhanhtruong/prompt-lab --agent claude-code -y
```

## Usage

### prompt-gen

Generate prompts for any AI tool:

```
Write a prompt for Claude Code to refactor my auth module
```

```
I need a Midjourney prompt for a cyberpunk cityscape
```

The skill will:

1. Identify the target tool
2. Extract your intent
3. Apply the appropriate template
4. Check for common issues
5. Output a ready-to-paste prompt

### prompt-eval

Evaluate an existing prompt:

```
Evaluate this summarizer prompt: [paste prompt]
```

```
Test my prompt in prompt_lab/prompts/summarizer.txt
```

The skill will:

1. Understand what the prompt should do
2. Design test cases (happy path, edge cases, adversarial)
3. Choose appropriate graders
4. Run the evaluation (optional)
5. Report results with recommendations

## Structure

```
prompt-lab/
├── prompt-gen/
│   ├── SKILL.md
│   └── references/
│       ├── tools/       # 10 tool profiles
│       ├── templates/   # 13 prompt templates
│       └── patterns/    # 37 diagnostic patterns
├── prompt-eval/
│   ├── SKILL.md
│   └── references/
│       ├── graders/     # 4 grader types
│       └── assertions/  # Common assertion patterns
├── LICENSE
└── README.md
```

## Supported Tools (prompt-gen)

| Type      | Tools                                |
| --------- | ------------------------------------ |
| LLM       | Claude, ChatGPT, Gemini              |
| Reasoning | O3                                   |
| Agentic   | Claude Code                          |
| IDE       | Cursor, Copilot                      |
| Image     | Midjourney, DALL-E, Stable Diffusion |

## Templates (prompt-gen)

| Template          | Best For                              |
| ----------------- | ------------------------------------- |
| RTF               | Simple one-shot tasks                 |
| CO-STAR           | Professional documents                |
| RISEN             | Multi-step projects                   |
| CRISPE            | Creative work, brand voice            |
| Chain of Thought  | Logic, math, debugging                |
| Few-Shot          | Consistent structured output          |
| File-Scope        | IDE code editing (Cursor, Copilot)    |
| ReAct + Stop      | Autonomous agents (Claude Code)       |
| Opus Task Brief   | Complex tasks on Opus models          |
| Visual Descriptor | Image generation (Midjourney, DALL-E) |
| Reference Image   | Editing existing images               |
| ComfyUI           | ComfyUI/Stable Diffusion workflows    |
| Prompt Decompiler | Breaking down existing prompts        |

## Graders (prompt-eval)

| Grader         | Use When                                     |
| -------------- | -------------------------------------------- |
| Code           | Deterministic checks (contains, regex, json) |
| Model          | Subjective criteria (tone, quality)          |
| Classification | Expected label must match                    |
| Custom         | Domain-specific logic                        |

## License

MIT - includes attribution to prompt-master for templates/patterns.
