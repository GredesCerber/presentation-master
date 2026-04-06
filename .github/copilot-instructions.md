# 🎯 Presentation Master System — Central Hub

**Status**: Production-ready with self-improvement loop  
**Last Updated**: 2026-04-07  
**Version**: 1.0.0

---

## 📊 System Architecture

```
┌─────────────────────────────────────────────────────────┐
│          PRESENTATION MASTER SYSTEM (Self-Improving)   │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  Main Use: Presentation Generation                      │
│  ├─ Agent: presentation-master.agent.md                │
│  ├─ Skill: presentation-master.skill.md                │
│  ├─ Logic: Generate topic+authors → 2 HTML files       │
│  └─ Quality: Full checklist + fact-checking            │
│                                                         │
│  Self-Improvement: AI-Driven Enhancement              │
│  ├─ Agent: self-improvement.agent.md                   │
│  ├─ Trigger: After each presentation generation        │
│  ├─ Process: Analyze → Suggest → Wait for approval     │
│  └─ Action: Update skill/agent → Commit to Git         │
│                                                         │
│  Git Integration: Version Control                       │
│  ├─ Repo: presentation-master (private)          │
│  ├─ Auto-commit: When improvements approved            │
│  ├─ Branches: main (stable) + dev (experimental)       │
│  └─ History: All changes tracked                       │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

## 🔗 How Everything Connects

### 1. **User Creates Presentation**
```
User: "Создай презентацию про ML, авторы: Иван и Мария"
     ↓
presentation-master AGENT
     ↓
Reads: presentation-master.skill.md (detailed instructions)
     ↓
Generates: 2 HTML files + runs quality checklist
     ↓
Result: Production-ready presentation
```

### 2. **System Reviews for Improvements**
```
Presentation Generated ✓
     ↓
self-improvement AGENT analyzes:
  - Slide quality
  - Content patterns
  - Possible enhancements
  - Missing edge cases
     ↓
Suggests: "Улучшения обнаружены: [list]"
     ↓
User Confirms: "Да, улучшить" OR "Пропустить"
```

### 3. **Approved Improvements Update System**
```
User Approves ✓
     ↓
Update files:
  - presentation-master.skill.md (enhanced)
  - presentation-master.agent.md (refined)
  - improvement-log.md (tracked)
     ↓
Auto-commit to Git:
  - Message: "improvement: [description]"
  - Branch: main
  - Tag: v1.0.1
     ↓
System Ready for Next Use
```

---

## 🚀 Workflow: From Creation to Self-Improvement

### Flow Diagram

```
START: "Create Presentation"
  │
  ├─→ presentation-master.agent.md (Main Agent)
  │   ├─ Reads skill.md
  │   ├─ Generates 2 files
  │   ├─ Runs checklist
  │   └─ Returns: ✅ Complete
  │
  ├─→ [pause 2 seconds]
  │
  ├─→ self-improvement.agent.md (Improvement Agent)
  │   ├─ Analyzes presentation
  │   ├─ Checks patterns
  │   ├─ Identifies improvements
  │   └─ Returns: "Suggestions?"
  │
  ├─→ USER DECISION POINT
  │   ├─ "Да, улучшить"  →  [To: Approval]
  │   ├─ "Пропустить"    →  [Exit]
  │   └─ "Отправить в dev"→  [Dev Branch]
  │
  ├─→ Approval Process
  │   ├─ Review improvements
  │   ├─ Confirm changes safe
  │   └─ Apply changes
  │
  ├─→ Git Integration
  │   ├─ Read current versions
  │   ├─ Apply updates
  │   ├─ Commit to Git
  │   ├─ Tag release
  │   └─ Push to GitHub
  │
  └─→ END: System Ready ✅
```

---

## 📝 Key Files & Their Roles

| File | Purpose | How It's Used |
|------|---------|---------------|
| **presentation-master.skill.md** | Detailed step-by-step workflow (12 STEPs) | Read by main agent for generation |
| **presentation-master.agent.md** | Main agent definition + constraints | Invoked by user for presentations |
| **self-improvement.agent.md** | Improvement reviewer (reads skill, analyzes output) | Auto-triggered after generation |
| **copilot-instructions.md** (THIS FILE) | System overview + connection hub | Ensures all parts work together |
| **AGENTS.md** | Declares all agents + their relationships | Manages agent delegation |
| **improvement-log.md** | Audit trail of all improvements | For history & debugging |
| **GitHub Repo** | Version-controlled backups | For recovery after Windows reinstall |

---

## 🔄 Self-Improvement Cycle

### How Self-Improvement Triggers

**Automatic Trigger** (after presentation generation):
```
✅ Presentation generated
     ↓
Auto-prompt: "Allow self-improvement check? (Y/n)"
     ↓
If YES → self-improvement.agent analyzes output
```

### What Self-Improvement Looks For

1. **Pattern Recognition**
   - Similar topics = similar structure?
   - Could templates improve speed?

2. **Quality Analysis**
   - Fact-checking edge cases
   - Examples always relevant?
   - Slide balance (content/visual)?

3. **User Feedback**
   - Did presentation go well?
   - Any common pain points?
   - Suggestions from presenters?

4. **System Learning**
   - New slide types discovered?
   - Color palette improvements?
   - Navigation enhancements?

### Improvement Categories

**Type A: Quick Wins** (low risk)
```
- Add 1 new example to skill
- Clarify wording
- Fix typo in checklist
```

**Type B: Feature Additions** (medium risk)
```
- Add new slide type template
- Introduce new design pattern
- Enhance fact-checking
```

**Type C: Architectural** (high risk)
```
- Change slide calculation formula
- Rewrite core workflow
- Modify file naming convention
```

Only Type A approved automatically. B & C require user confirmation.

---

## ✅ Approval Workflow

### When Improvement Suggested

```
System: "Improvement Found: [Category]"
        "[Description]"
        
Options:
  1. Approve (✓) - Apply to main + commit
  2. Review First (?) - Show diff before applying
  3. Skip (✗) - Don't apply now
  4. Send to Dev (~) - Test on dev branch first
```

### Example: User Chooses "Review First"

```
System: Showing proposed changes...

BEFORE (skill.md line 150):
  "Max 5 bullets per slide"

AFTER (skill.md line 150):
  "Max 5 bullets per slide (split into 2 slides if needed)"

Changes to: presentation-master.skill.md
            presentation-master.agent.md (1 reference)
            
Safe? (y/n/cancel)
```

---

## 🔧 Git Integration for Self-Improvement

### Auto-Commit Process

When user approves improvement:

```
1. Read current files from disk
2. Apply improvements locally
3. Git commit: `git add -A && git commit -m "improvement: [title]"`
4. Git tag: `git tag v1.0.[increment]`
5. Push to GitHub: `git push origin main --tags`
6. Update improvement-log.md with entry
7. Confirm: "✅ Committed v1.0.X"
```

### Commit Message Format

```
improvement: [Type] - [Description]

Examples:
  improvement: Type A - Add handling for 4-author presentations
  improvement: Type B - New card grid slide type template
  improvement: Type C - Refactor slide calculation to use duration
```

### Version Strategy

```
v1.0.0 → Initial release
v1.0.1 → First improvement (Type A)
v1.1.0 → Feature addition (Type B)
v2.0.0 → Major redesign (Type C)
```

---

## 📊 Improvement Log

See `improvement-log.md` for complete history:
- Date of improvement
- Type (A/B/C)
- What changed
- Who approved (user vs automatic)
- Git commit hash
- Status (stable/testing)

---

## 🎛️ How to Control Self-Improvement

### Enable/Disable Auto-Suggestions

```
/settings "presentation-master"
  ├─ Auto-suggest improvements: ON/OFF
  ├─ Auto-approve Type A: ON/OFF
  ├─ Git auto-commit: ON/OFF
  └─ Dev branch testing: ON/OFF
```

### Manual Improvement Review

```
/review improvements last:5
  Shows last 5 improvements applied/suggested
  
/dev <improvement-id>
  Move specific improvement to dev branch for testing
  
/rollback <version>
  Revert to previous version from Git
```

### Force Improvement Check

```
/check improvements
  Manually trigger self-improvement analysis
  
/improve <specific-area>
  Target specific part (skill, agent, process, examples)
```

---

## 🚨 Safety Guardrails

### What Self-Improvement CANNOT Change

❌ Core requirements (14-22 slides rule)  
❌ File naming convention  
❌ Dual-file output requirement  
❌ Fact-checking protocol  
❌ Quality checklists  

These are LOCKED and require user code change.

### What Self-Improvement CAN Change

✅ Examples in skill  
✅ Wording/clarity  
✅ New slide types (as templates)  
✅ Color palettes (additions)  
✅ Typography options  
✅ Anti-patterns list  
✅ Design standards  

### Automatic Rollback

If after improvement the system breaks:
```
Detection: Next presentation fails
     ↓
Auto-rollback: Git revert last commit
     ↓
Alert: "Improvement reverted due to error.
        Please review and re-approve."
     ↓
Improvement marked as "FAILED" in log
```

---

## 🔐 Approval Authority

| Type | Auto-Approval | Requires Review | Requires Explicit |
|------|---------------|-----------------|-------------------|
| Type A | ✅ YES | No | No |
| Type B | ❌ NO | ✅ YES | ✅ YES |
| Type C | ❌ NO | ✅ YES | ✅ YES + confirmation |
| Rollback | N/A | ✅ YES (after alert) | ✅ YES (if rollback failed) |

---

## 📈 Progress Tracking

### What Gets Tracked

```
improvement-log.md:
  ├─ Date: 2026-04-07
  ├─ Type: A
  ├─ Title: Add 4-author slide rule
  ├─ Files: presentation-master.skill.md
  ├─ Git: commit abc123
  ├─ Status: ✅ Applied
  └─ Impact: Better handling of group presentations
```

### Metrics Shown

```
System Stats:
  Total improvements: 12
  Type A: 10 (auto-approved)
  Type B: 2 (user-approved)
  Type C: 0
  Rollbacks: 0
  Current version: v1.2.3
```

---

## 🎓 How to Use This System

### First Time Setup

1. ✅ Read this file (done!)
2. ✅ Review `presentation-master.skill.md` (detailed workflow)
3. ✅ Check `presentation-master.agent.md` (main agent)
4. ✅ Review `self-improvement.agent.md` (improvement logic)
5. ✅ Git clone repo (for backup)

### Regular Use

```
User: "Создай презентацию про [topic], авторы: [names]"
     ↓
Main agent generates
     ↓
System asks: "Check for improvements? (Y/n)"
     ↓
Choose:
  • Approve auto improvements (Type A)
  • Review suggested improvements (Type B/C)
  • Just present without improvements
```

### When System Updates

1. ✅ You approve improvement
2. ✅ Files update locally
3. ✅ Auto-commit to Git
4. ✅ Next time you use system = better version

---

## 🔗 File Relationships Map

```
copilot-instructions.md (YOU ARE HERE)
     ├─ References → presentation-master.skill.md
     ├─ References → presentation-master.agent.md
     ├─ Manages → self-improvement.agent.md
     ├─ Tracks → improvement-log.md
     ├─ Declares → AGENTS.md
     └─ Syncs → GitHub repo (backup)

presentation-master.skill.md
     ├─ Read by → presentation-master.agent.md
     ├─ Analyzed by → self-improvement.agent.md
     ├─ Updated by → self-improvement (when approved)
     └─ Versioned in → GitHub

presentation-master.agent.md
     ├─ Called by → User or self-improvement (as subagent)
     ├─ References → presentation-master.skill.md
     └─ Updated by → self-improvement (when approved)

self-improvement.agent.md
     ├─ Reads → presentation-master.skill.md + agent.md
     ├─ Analyzes → Generated presentations
     ├─ Suggests → Improvements
     ├─ Awaits → User confirmation
     └─ Executes → Git commits

improvement-log.md
     ├─ Updated by → self-improvement agent
     └─ Reviewed by → User (for history)

GitHub repo
     ├─ Stores → All files (backup)
     ├─ Tracks → All improvements (commit history)
     └─ Enables → Recovery after Windows reinstall
```

---

## 🚀 Quick Commands

```
# Generate presentation (main use)
/presentation "Topic" authors:"Name1, Name2"

# Force improvement check
/check improvements

# Review improvement history
/review improvements

# Move to dev for testing
/dev <improvement-id>

# Rollback to previous version
/rollback v1.0.5

# Sync with GitHub
/sync git

# Show system status
/status
```

---

## 📞 Support & Troubleshooting

### "System doesn't suggest improvements"
- Check in `/settings` if auto-suggest is ON
- Run `/check improvements` manually
- Review `self-improvement.agent.md` for activation rules

### "Improvement didn't apply"
- Check `improvement-log.md` for actual status
- Verify files weren't locked by another process
- Try `/rollback` to previous version

### "Git commit failed"
- Check GitHub credentials in system
- Verify repo URL in config
- Check if internet connection available

---

## 🎯 Vision

This system will:
1. ✅ Generate presentations quickly (with skill)
2. ✅ Learn from each use (via self-improvement agent)
3. ✅ Improve automatically over time (with your approval)
4. ✅ Never lose changes (Git versioning)
5. ✅ Be portable (survive Windows reinstall via GitHub clone)

**End result**: Better presentations, better system, faster over time. 🚀

---

**Configuration Version**: 1.0.0  
**Last Updated**: 2026-04-07  
**Next Review**: After 10 presentations generated
