# ⚡ First Time Setup — 5 Minutes

**Everything is ready. Here's the 5-minute checklist.**

---

## ✅ Setup Checklist

### 1. Verify Files Are In Place

Files should be here: `C:\Users\GredesCerber\AppData\Roaming\Code\User\prompts\`

Check for these files:
```
✓ presentation-master.skill.md       (workflow specification)
✓ presentation-master.agent.md       (main agent code)
✓ self-improvement.agent.md          (improvement analyzer)
✓ README.md                          (this guide)
✓ .github/copilot-instructions.md    (system hub)
✓ .github/AGENTS.md                  (agent registry)
✓ .github/improvement-log.md         (history log)
```

**All present?** → Continue to Step 2

---

### 2. Verify VS Code Sees The Agent

Open **VS Code**

Open **Copilot Chat** (Ctrl+Shift+I)

Look for the **Agent Dropdown** at the top:

![Agent dropdown location]

Click the dropdown. You should see:
- `presentation-master` ← This is your agent!
- (Other default agents)

**See it?** → Continue to Step 3

---

### 3. Test Generation

In Copilot Chat, type:

```
Создай тестовую презентацию про искусственный интеллект, авторы: Алиса и Боб
```

Then press Enter.

**Expected result within 30-60 seconds:**

```
✓ Analyzing request...
✓ Planning 16 slides (8 per author)...
✓ Generating HTML...
✓ Creating speaker notes...
✓ Running quality checks...

Generated files:
  • искусственный интеллект.html (presentation - 16 slides)
  • Tekst_Vystu plemiya_искусственный интеллект.html (notes)

Quality checks: ✓ ALL PASS

System asks: "Check for system improvements? (y/n)"
```

**Did you get files?** → Continue to Step 4

---

### 4. Accept Self-Improvement Suggestion

When system asks: **"Check for system improvements? (y/n)"**

Type: `y`

**Expected result:**

```
Analyzing presentation for improvements...

Found 1 suggestion:
  TYPE A (Low Risk):
  "Adding more visual examples to 'Neural Networks' slide
   would improve clarity for non-technical audience."

Approve? (y/n)
```

Type: `y`

**Expected result:**

```
✓ Suggestion applied
✓ Skill updated
✓ Git commit: [self-improve] Add visual examples
✓ Version bumped: v1.0.0 → v1.0.1
✓ Improvement logged
```

**Successfully approved?** → Setup Complete! ✅

---

## 🎯 You're Done!

Everything is working. The system is now:
- ✅ Generating presentations
- ✅ Creating speaker notes
- ✅ Running quality checks
- ✅ Suggesting improvements
- ✅ Auto-updating itself

---

## 🔄 What Happens Next

### Each Time You Create a Presentation

**Automatic:**
1. ✓ Agent selects presentation-master
2. ✓ Reads workflow from skill.md
3. ✓ Generates both files
4. ✓ Runs quality checklist
5. ✓ Shows results

**Optional:**
6. ? Self-improvement analyzes
7. ? Suggests improvements
8. ? You approve/reject
9. ? System updates and logs

---

## 📋 Common Commands

### To create a new presentation:
```
Создай презентацию про [любая тема], авторы: [имя1], [имя2]
```

### To check improvements manually:
```
Проанализируй последнюю презентацию и предложи улучшения
```

### To see what's changed:
```
Покажи историю улучшений
```

### To check system status:
```
Какая версия системы? Сколько было обновлений?
```

---

## 🆘 If Something Doesn't Work

### Agent not appearing in dropdown?
```
1. Shift+Ctrl+P → "Reload Window"
2. Then check agent dropdown again
```

### No files generated?
```
1. Check VS Code Output tab (View > Output)
2. Look for errors
3. If still stuck, run: /check system status
```

### Improvement suggestions not appearing?
```
1. That's okay - they may not always suggest
2. You can manually ask: "Find improvements"
```

---

## 📖 Learn More

| Want to Know | Read This |
|-------------|----------|
| How entire system works | `.github/copilot-instructions.md` |
| All agents and their roles | `.github/AGENTS.md` |
| Detailed generation process | `presentation-master.skill.md` |
| All past improvements | `.github/improvement-log.md` |
| Quick reference | This file! |

---

## ✨ You're Ready to Go!

**Next action:** 
Open Copilot Chat and create your first real presentation:

```
Создай презентацию про любую интересную тему, авторы: [имена]
```

**Enjoy! 🚀**

---

**System Status**: ✅ READY  
**Last Updated**: 2026-04-07