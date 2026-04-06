# 🚀 Installation Guide — Automatic Setup

**One-command installation for Presentation Master system**

---

## ⚡ Quick Install (3 steps)

### Step 1: Open PowerShell

Press `Win + R` and type:
```
powershell
```

### Step 2: Run Installation Script

Clone locally first:
```powershell
git clone https://github.com/GredesCerber/presentation-master-skill.git
cd presentation-master-skill
.\install.ps1
```

### Step 3: Reload VS Code

- Press `Shift + Ctrl + P`
- Type: `Reload Window`
- Press Enter

**Done!** ✅ Agent appears in Copilot Chat dropdown

---

## 📋 What the Script Does

✅ **Clones** the GitHub repository
✅ **Copies** all files to `%APPDATA%\Code\User\prompts\`
✅ **Backs up** any existing installation
✅ **Initializes** Git for version tracking
✅ **Verifies** VS Code installation
✅ **Displays** success confirmation

---

## 🔍 Manual Installation (Alternative)

If you prefer to install manually:

### 1. Clone Repository
```bash
git clone https://github.com/GredesCerber/presentation-master-skill.git
cd presentation-master-skill
```

### 2. Copy Files

Copy all files from the repo to:
```
C:\Users\[YourUsername]\AppData\Roaming\Code\User\prompts\
```

**Files to copy:**
- `README.md`
- `SETUP.md`
- `START_HERE.md`
- `QUICK_REFERENCE.md`
- `presentation-master.skill.md`
- `presentation-master.agent.md`
- `self-improvement.agent.md`
- `.github/` (entire folder)

### 3. Reload VS Code

- Press `Shift + Ctrl + P`
- Type: `Reload Window`
- Press Enter

---

## ✅ Verify Installation

After installation:

1. **Open VS Code**
2. **Open Copilot Chat** (`Ctrl+Shift+I`)
3. **Click agent dropdown** (top of chat)
4. **Look for** `presentation-master` ← Should be there!

If you don't see it:
- Try reloading again: `Shift+Ctrl+P` → `Reload Window`
- Check files are in: `%APPDATA%\Code\User\prompts\`
- Restart VS Code completely

---

## 📍 Installation Location

Files are installed to your VS Code profile:

**Windows:**
```
C:\Users\[YourUsername]\AppData\Roaming\Code\User\prompts\
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

## 🔄 Updating System

To update to latest version:

### Option 1: Re-run Installation Script
```powershell
.\install.ps1
```
Script will automatically back up your current installation.

### Option 2: Pull Latest from Git
```bash
cd %APPDATA%\Code\User\prompts
git pull origin main
```

---

## 🆘 Troubleshooting

### "PowerShell execution policy" error

**Fix:** Run this first:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Then run install script again.

### "Git is not installed" error

**Fix:** Install Git from https://git-scm.com/download/win

### "VS Code not found" error

**Fix:**
1. Install VS Code from https://code.visualstudio.com
2. Restart PowerShell
3. Run install script again

### Agent doesn't appear after reload

**Fix steps:**
1. Verify files copied: Open explorer → `%APPDATA%\Code\User\prompts\`
2. Check files exist:
   - `presentation-master.skill.md`
   - `presentation-master.agent.md`
   - `self-improvement.agent.md`
3. Restart VS Code completely (close and reopen)
4. Clear VS Code cache: Delete `%APPDATA%\Code\CachedData\`
5. Run reload: `Shift+Ctrl+P` → `Reload Window`

---

## 🔐 Permissions & Safety

- ✅ Script is open-source (check `install.ps1`)
- ✅ Only copies official files from repo
- ✅ Automatically backs up existing installations
- ✅ Requires user confirmation if issues occur
- ✅ No admin rights needed
- ✅ All files stay local (no cloud upload)

---

**Installation Script Version**: 1.0.0
**System Version**: 1.0.0
**Last Updated**: 2026-04-07