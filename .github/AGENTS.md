---
description: "Presentation Master System — Agent Declaration"
---

# AGENTS.md — System Agent

**Purpose**: Declare presentation-master agent  
**Location**: `.github/AGENTS.md`  
**Used by**: VS Code Copilot for agent discovery

---

## presentation-master

**File**: `presentation-master.agent.md`  
**Skill**: `presentation-master.skill.md` (linked via `uses:` directive)

**Role**: HTML presentation generator  
**User-invocable**: YES (appears in agent list)

**Triggers**:
- User selects "presentation-master" in menu
- User writes "create presentation", "make presentation", "новая презентация"

**What it does**:
1. Extracts topic + authors from request
2. Uses DEFAULT Academic style (or user-specified)
3. Calculates slide count (MINIMUM 14 always)
4. Uses `create` tool to generate HTML presentation
5. Uses `create` tool to generate HTML speech notes
6. Verifies quality checklist
7. Confirms completion

**Tools**: `create`, `view`, `edit`, `powershell`

**Output**: 2 HTML files in user's current directory

**Default style**: Academic (blue/teal) — as in `examples/`

**Alternative styles** (only if user explicitly requests):
| Trigger | Style |
|---------|-------|
| "Glassmorphism" | Glass + animations |
| "light/white" | Minimal Light |
| "dark minimalist" | Minimal Dark |
| "gradient" | Gradient Mesh |
| "neomorphism" | Neomorphism |
| "brutalist" | Brutalist |
| "corporate" | Corporate |

**Workflow**:
```
START
  ↓
Reads presentation-master.skill.md (via uses:)
  ↓
Extracts: topic, authors, author count
  ↓
Checks: style specified? (if no → Academic)
  ↓
Calculates: slides = MINIMUM 14, up to 22
  ↓
create tool → {Topic}.html
  ↓
create tool → Speech_{Topic}.html
  ↓
Fact-checking
  ↓
Post-generation checklist
  ↓
DONE: Both files created
```

**Success criteria**:
- ✅ 14-22 slides generated
- ✅ Academic style (or user-specified)
- ✅ No author labels on slides
- ✅ Both files in working directory
- ✅ Checklist passed
- ✅ Facts verified

**Error handling**:
- If file already exists → use `edit` or unique name
- If checklist fails → Don't save files → Show problems

---

**Version**: 1.4.0  
**Updated**: April 2026
