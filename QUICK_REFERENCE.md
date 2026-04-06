# 📌 Quick Reference Card

**Bookmark this! One-page guide to everything.**

---

## 🎯 Main Commands

| What You Want | Command | Result |
|---------------|---------|--------|
| **Generate presentation** | `Создай презентацию про [тема], авторы: [имя1], [имя2]` | 2 HTML files |
| **Check for improvements** | `Проанализируй последнюю презентацию и предложи улучшения` | Suggestions |
| **See improvement history** | `Покажи историю улучшений (improvement-log)` | Version list |
| **Check system status** | `Какая версия системы? Какие были обновления?` | Version info |
| **View current agents** | Select agent dropdown in Copilot Chat | See available agents |
| **Reload system** | Shift+Ctrl+P → "Reload Window" | Fresh start |

---

## 🚀 Typical Workflow

### Session: Generate 1 Presentation

```
1. Open VS Code (Ctrl+Shift+I → Copilot Chat)

2. Click agent dropdown → Select "presentation-master"

3. Type:
   Создай презентацию про ИИ, авторы: Алиса и Боб

4. System generates (30-60 sec):
   ✓ искусственный интеллект.html (16 slides)
   ✓ Speech_Notes_искусственный интеллект.html (notes)
   ✓ Quality checks: ALL PASS ✓

5. System asks: "Check for improvements? (y/n)"
   → Type: y  (to accept suggestions)
   → Type: n  (to skip)

6. If y: Review suggestion → Approve/Reject
   → Approved: v1.0.0 → v1.0.1, logged ✓

7. Done! Files ready to use.
```

---

## 📋 When System Asks You Questions

### "Check for improvements? (y/n)"
```
y = Let self-improvement agent analyze
    Get 1-2 Type A suggestions
    Approve/reject each one

n = Skip analysis, just show files
```

### "Approve this improvement? (y/n)"
```
y = Apply change to system files
    Auto-commit to GitHub
    Update improvement-log.md
    Version bumps x.y.z

n = Suggestion rejected
    System unchanged
    Next improvement may differ
```

### "HIGH RISK - Explicit approval? (y/n)"
```
Only for Type C (major changes)

y = Proceed with caution
    This is a big change
    May affect many presentations

n = Block change, stay safe
    Require review first
```

---

## 📂 File Locations

**Main files** → `C:\Users\GredesCerber\AppData\Roaming\Code\User\prompts\`

```
README.md                          ← START HERE (overview)
SETUP.md                           ← Setup verification
presentation-master.skill.md       ← Workflow rules
presentation-master.agent.md       ← Main agent code
self-improvement.agent.md          ← Improvement analyzer

.github/
├── STATUS.md                      ← Current status
├── MANIFEST.md                    ← File inventory
├── copilot-instructions.md        ← System architecture
├── AGENTS.md                      ← Agent registry
└── improvement-log.md             ← History of changes
```

---

## 🎯 File Quick Links

| Document | Purpose | Read Time |
|----------|---------|----------|
| README.md | System overview | 10 min |
| SETUP.md | First-time setup | 5 min |
| STATUS.md | Current state | 5 min |
| MANIFEST.md | File guide | 10 min |
| copilot-instructions.md | System design | 20 min |
| AGENTS.md | Agent details | 15 min |
| improvement-log.md | Change history | 5 min |

---

## 🔄 Improvement Types

| Type | Risk | Example | Action |
|------|------|---------|--------|
| **A** | Low | "Better examples" | Ask user |
| **B** | Medium | "New template" | Show diff |
| **C** | High | "Core logic change" | Explicit approval |

---

## ✅ Quality Checklist

System runs 15+ checks:

```
✓ 14-22 slides?
✓ Dual files created?
✓ Both files valid HTML?
✓ Speaker notes complete?
✓ No author labels on slides?
✓ All links working?
✓ All images embedded?
✓ Content under 150 words/slide?
✓ Fact-checked data?
✓ Typography consistent?
✓ Colors accessible?
✓ Mobile responsive?
✓ Metadata complete?
✓ Performance OK?
✓ No typos/errors?

If all 15 pass: ✅ FILE READY ✅
```

---

## 🐛 Quick Troubleshooting

| Problem | Solution |
|---------|----------|
| Agent not in dropdown | Shift+Ctrl+P → Reload Window |
| Files not generating | Check VS Code Output tab |
| Improvements not showing | Try manual: "Find improvements" |
| Git not syncing | Check GitHub connection |
| Want to undo | Check improvement-log.md, use `git revert` |

---

## 📖 Learning Path

**First 15 minutes:**
1. Read README.md
2. Follow SETUP.md checklist
3. Generate test presentation
4. See quality checks pass ✓

**Next 30 minutes:**
5. Read MANIFEST.md
6. Understand file structure
7. Review copilot-instructions.md

**Next work session:**
8. Generate 2-3 real presentations
9. Approve improvement suggestions
10. Watch system version bump

**After 5-10 presentations:**
11. Review improvement-log.md
12. System should be v1.0.2+ now
13. Notice quality improving

---

## 🎓 System Rules (Remember These!)

### DO ✅
```
✓ Use agent dropdown to select "presentation-master"
✓ Approve reasonable improvement suggestions (Type A)
✓ Check improvement-log.md to see changes
✓ Generate presentations on same topic to compare
✓ Review quality checklist output
✓ Ask for manual improvements analysis
```

### DON'T ❌
```
✗ Manually edit skill.md unless you know consequences
✗ Delete improvement-log.md entries
✗ Disable approval workflow
✗ Skip quality checks
✗ Ignore Type C warnings
✗ Store files in shared cloud folders
```

---

## 🚀 Super Quick Start

**Right now, in 3 steps:**

```
1. Open VS Code Copilot Chat (Ctrl+Shift+I)

2. Select agent dropdown → presentation-master

3. Type: Создай презентацию про любую тему, авторы: имя1, имя2

DONE! Files appear in 30-60 seconds. ✓
```

---

## 💾 Backup & Recovery

**If something breaks:**

```
1. Check improvement-log.md for last change
2. Get Git commit hash from log
3. Run: git revert <hash>
4. Files restored to previous working state
```

**To recover from Windows reinstall:**

```
1. Clone repo:
   git clone https://github.com/GredesCerber/presentation-master-skill
2. Copy all files to:
   C:\Users\GredesCerber\AppData\Roaming\Code\User\prompts\
3. Restart VS Code
4. Ready to go!
```

---

## 📊 System Status Page

Check: `.github/STATUS.md` for:
- ✅ What's working
- ✅ What's in progress
- ✅ Next planned features
- ✅ Quality metrics
- ✅ Launch readiness

**Current Status**: ✅ PRODUCTION READY

---

## 👥 Support Resources

| Need | Find In |
|------|----------|
| Overview | README.md |
| Setup help | SETUP.md |
| File guide | MANIFEST.md |
| System design | copilot-instructions.md |
| Agent info | AGENTS.md |
| Change history | improvement-log.md |
| Current status | STATUS.md |

---

## ⏱️ Time Estimates

| Task | Time |
|------|------|
| First-time setup | 5 min |
| Generate 1 presentation | 1 min (system takes 30-60 sec) |
| Review improvements | 2 min |
| Approve suggestion | 1 min |
| Read full architecture | 20 min |
| Custom skill edits | 15-30 min |

---

## 🎯 What To Do Right Now

```
[ ] 1. Read README.md (5 min)
[ ] 2. Follow SETUP.md (5 min)
[ ] 3. Generate your first presentation (1 min)
[ ] 4. Say yes to improvements check (optional)
[ ] 5. You're done! System works! ✓
```

---

**Save this page! Print it! Bookmark it!**

**Your complete system reference in one place.** 📌

---

**Version**: 1.0.0  
**Updated**: 2026-04-07  
**Status**: ✅ Active