# Presentation Master — System Instructions

**Version**: 1.5.0  
**Updated**: April 2026

---

## Overview

Creates beautiful HTML presentations from topic + authors.

**Output:** 2 files
- `{Topic}.html` — Interactive slides (14-22 slides)
- `Speech {Topic}.html` — Speaker notes

---

## Key Rules

### 1. No Scrolling
Slides must fit on screen. Use `overflow: hidden` and compact design.

### 2. Navigation Layout
```
[1/15] ←────────────────────→ [◄] [►]
  ↑ bottom-left               ↑ bottom-right
```
Leave ~80px padding at bottom for nav.

### 3. Study Examples
`examples/` folder = quality reference. Match that level.

### 4. Use `create` Tool
Don't output code to chat. Create actual files.

---

## Architecture

```
presentation-master/
├── presentation-master.agent.md   # Agent instructions
├── presentation-master.skill.md   # Technical guide
├── examples/                      # Quality reference
│   ├── Artificial Intelligence.html
│   ├── Climate Change.html
│   └── Cybersecurity.html
└── install.ps1                    # VS Code installer
```

---

## Design Principles

| Aspect | Guideline |
|--------|-----------|
| Layout | Compact, no scroll, grids preferred |
| Style | Dark + accent colors (see examples/) |
| Visuals | Cards, icons, animations |
| Nav | Counter left, buttons right |
| Content | One idea per slide, concrete examples |

---

## Workflow

```
User request → Extract topic/authors → Plan structure
     ↓
Create {Topic}.html (slides)
     ↓
Create Speech {Topic}.html (notes)
     ↓
Verify quality → Done
```

---

**Status**: ✅ Production-ready
