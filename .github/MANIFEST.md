# 📦 System Manifest — Complete File Inventory

**What you have, where it is, and what it does.**

Generated: 2026-04-07  
System Version: 1.0.0  
Status: ✅ Production Ready

---

## 📁 Repository Structure

```
presentation-master-skill/
│
├── 📄 START_HERE.md           ← Entry point (read first!)
├── 📄 README.md               ← System overview
├── 📄 SETUP.md                ← First-time setup checklist
├── 📄 QUICK_REFERENCE.md      ← One-page command reference
├── 📄 INSTALL.md              ← Installation guide
├── 📄 README_REPO.md          ← GitHub repo description
│
├── 🤖 presentation-master.skill.md    ← Core workflow (12 steps)
├── 🤖 presentation-master.agent.md    ← Main agent definition
├── 🤖 self-improvement.agent.md       ← Self-improvement agent
│
├── ⚙️ install.ps1             ← Automatic installer script
│
└── 📂 .github/
    ├── copilot-instructions.md  ← System hub & architecture
    ├── AGENTS.md                ← Agent registry & orchestration
    ├── MANIFEST.md              ← This file (inventory)
    ├── STATUS.md                ← Current system status
    └── improvement-log.md       ← Change history & audit trail
```

---

## 📋 File Descriptions

### Documentation Files

| File | Purpose | Read When |
|------|---------|-----------|
| `START_HERE.md` | Navigation hub, quick links | First time opening repo |
| `README.md` | Full system overview | Understanding the system |
| `SETUP.md` | Step-by-step verification | After installation |
| `QUICK_REFERENCE.md` | All commands in one place | Daily reference |
| `INSTALL.md` | Installation instructions | Setting up on new machine |
| `README_REPO.md` | GitHub repo description | Sharing with others |

### Agent Files

| File | Purpose | Used By |
|------|---------|---------|
| `presentation-master.skill.md` | Detailed 12-step workflow | Main agent reads this |
| `presentation-master.agent.md` | Agent definition & constraints | VS Code Copilot |
| `self-improvement.agent.md` | Improvement analyzer | After presentation generation |

### Configuration Files

| File | Purpose | Modified By |
|------|---------|-------------|
| `.github/copilot-instructions.md` | System architecture hub | Self-improvement agent |
| `.github/AGENTS.md` | Agent declarations | Manual only |
| `.github/MANIFEST.md` | File inventory (this file) | Manual only |
| `.github/STATUS.md` | Current system status | Self-improvement agent |
| `.github/improvement-log.md` | Change history | Auto-updated on improvements |

### Scripts

| File | Purpose | Run When |
|------|---------|----------|
| `install.ps1` | Automatic setup | First time installation |

---

## 📍 Installation Locations

### After Running install.ps1

Files are copied to VS Code prompts folder:

**Windows:**
```
C:\Users\[Username]\AppData\Roaming\Code\User\prompts\
```

**macOS:**
```
~/Library/Application Support/Code/User/prompts/
```

**Linux:**
```
~/.config/Code/User/prompts/
```

---

## 🔄 File Relationships

```
START_HERE.md
    └─→ Points to all documentation

README.md
    └─→ References all components

presentation-master.agent.md
    └─→ Reads: presentation-master.skill.md
    └─→ Triggers: self-improvement.agent.md

self-improvement.agent.md
    └─→ Reads: presentation-master.skill.md
    └─→ Reads: presentation-master.agent.md
    └─→ Updates: improvement-log.md

.github/copilot-instructions.md
    └─→ References: All agents
    └─→ Describes: System architecture

.github/AGENTS.md
    └─→ Declares: All agents
    └─→ Defines: Orchestration rules

install.ps1
    └─→ Copies: All files to VS Code
    └─→ Configures: Git integration
```

---

## 📊 File Statistics

| Category | Count | Total Size |
|----------|-------|------------|
| Documentation | 6 files | ~30 KB |
| Agents | 3 files | ~25 KB |
| Configuration | 5 files | ~35 KB |
| Scripts | 1 file | ~4 KB |
| **Total** | **15 files** | **~94 KB** |

---

## ✅ Completeness Checklist

- [x] Entry point documentation (START_HERE.md)
- [x] System overview (README.md)
- [x] Setup guide (SETUP.md)
- [x] Quick reference (QUICK_REFERENCE.md)
- [x] Installation guide (INSTALL.md)
- [x] Main workflow skill (presentation-master.skill.md)
- [x] Main agent (presentation-master.agent.md)
- [x] Self-improvement agent (self-improvement.agent.md)
- [x] System hub (copilot-instructions.md)
- [x] Agent registry (AGENTS.md)
- [x] File manifest (MANIFEST.md)
- [x] Status report (STATUS.md)
- [x] Improvement log (improvement-log.md)
- [x] Install script (install.ps1)

**All required files present!**

---

**Manifest Version**: 1.0.0  
**Last Updated**: 2026-04-07