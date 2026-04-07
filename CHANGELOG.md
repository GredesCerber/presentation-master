# Changelog

All notable changes to Presentation Master.

---

## [1.4.0] - 2026-04-07

### ✨ Changed

**Slide count logic fixed**
- MINIMUM is now ALWAYS 14 slides, regardless of author count
- 1 author = 14+ slides (covers all content), NOT "1 × 5 = 5"
- Clear formula: FIXED_SLIDES (4) + CONTENT_SLIDES (10-18)

**Instructions translated to English**
- All agent/skill instructions now in English for better LLM understanding
- Output (presentations) still in user's language

**HTML/CSS template improved**
- Added complete HTML template with proper viewport handling
- Fixed overflow issues — content fits on screen without scrolling
- Proper font sizes: h1 = 44px, h2 = 28px, body = 14-16px
- Compact cards: 14px padding, 14px text

**Documentation consolidated**
- Fixed merge conflict in README.md
- Updated CUSTOMIZATION.md with correct slide formula
- Converted AGENTS.md, copilot-instructions.md to English

### 📝 Updated files

- `presentation-master.skill.md` — new slide count logic, full HTML template
- `presentation-master.agent.md` — CRITICAL: Slide Count section
- `.github/AGENTS.md` — English, correct workflow
- `.github/copilot-instructions.md` — English
- `CUSTOMIZATION.md` — correct slide formula
- `README.md` — fixed merge conflict, v1.4.0

---

## [1.3.0] - 2026-04-06

### ✨ Changed

**Default style: Academic**
- All presentations now use Academic style (blue/teal) by default
- Alternative styles apply ONLY if user explicitly specifies
- Removed automatic style selection by topic

---

## [1.2.0] - 2026-04-06

### 🐛 Fixed

**Problem: files not created**
- Agent was outputting code to chat instead of creating files
- Added explicit "USE THE `create` TOOL" instruction
- Added "CRITICAL: File Creation" section to agent.md

**Problem: agent doesn't reference skill**
- Added `uses: presentation-master.skill.md` directive to frontmatter

**Problem: wrong tools**
- Fixed: `tools: [create, view, edit, powershell]`

### ✨ Added

**7 design styles** (from punyzxc/html-presentation-skill):
1. Glassmorphism
2. Minimal Dark
3. Minimal Light
4. Gradient Mesh
5. Neomorphism
6. Brutalist
7. Corporate

---

## [1.1.0] - 2026-04

### ✨ First release

- HTML presentation generation
- 14-22 slides
- Speaker notes
- 3 styles
- Offline (no dependencies)

---

## Legend

- ✨ Added / Changed
- 🐛 Fixed
- 📝 Documentation
