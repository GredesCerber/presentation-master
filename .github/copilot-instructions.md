# Presentation Master — System Instructions

**Version**: 1.4.0  
**Updated**: April 2026

---

## Architecture

```
presentation-master/
├── presentation-master.agent.md   # Main agent (uses: skill.md)
├── presentation-master.skill.md   # Generation workflow (12 steps)
├── install.ps1                    # Installer
├── examples/                      # Ready examples
└── .github/
    ├── AGENTS.md                  # Agent declaration
    └── copilot-instructions.md    # This file
```

---

## Workflow

```
User: "Create presentation about [topic], authors: [names]"
     ↓
presentation-master.agent.md
     ↓
Loads: presentation-master.skill.md (via uses:)
     ↓
Selects: DEFAULT Academic style (or user-specified)
     ↓
Uses: `create` tool for files
     ↓
Checks: Quality checklist
     ↓
Result: 2 HTML files created
```

---

## Key Files

| File | Purpose |
|------|---------|
| `presentation-master.skill.md` | 12 generation steps + styles + HTML template |
| `presentation-master.agent.md` | Agent definition + uses: directive |
| `examples/` | Presentation examples |

---

## Generation Rules

- **Slides**: 14-22 (MINIMUM 14, regardless of author count)
- **Files**: 2 (`{Topic}.html` + `Speech_{Topic}.html`)
- **Default style**: Academic (blue/teal as in examples/)
- **Creation tool**: `create` (MANDATORY!)
- **Author labels**: NO on slides
- **Dependencies**: NONE (all inline)

---

## Styles

### Default: Academic
Light background + blue primary color (as in `examples/`)

### Alternatives (only on explicit request)
| Trigger | Style |
|---------|-------|
| "Glassmorphism" | Glass + animations |
| "light/white" | Minimal Light |
| "dark minimalist" | Minimal Dark |
| "gradient" | Gradient Mesh |
| "neomorphism" | Neomorphism |
| "brutalist" | Brutalist |
| "corporate" | Corporate |

---

## CRITICAL: File Creation

**Agent MUST use `create` tool!**

```
❌ WRONG: Output code to chat
✅ CORRECT: create tool → {Topic}.html
```

If agent only "describes" code — it's a bug.

---

## CRITICAL: Slide Count

```
❌ WRONG: "1 author × 5 slides = 5 slides"
✅ CORRECT: "1 author = 14+ slides (covers ALL content)"
```

Minimum is ALWAYS 14 slides, maximum is 22.

---

**Status**: ✅ Production-ready
