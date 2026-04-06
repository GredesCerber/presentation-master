# 🚀 Installation Guide — Automatic Setup

**One-command installation for Presentation Master system**

---

## ⚡ Quick Install (2 steps)

### Step 1: Clone & Run

Open PowerShell and run:
```powershell
git clone https://github.com/GredesCerber/presentation-master.git
cd presentation-master
.\install.ps1
```

### Step 2: Reload VS Code

- Press `Shift + Ctrl + P`
- Type: `Reload Window`
- Press Enter

**Done!** ✅ Agent appears in Copilot Chat dropdown

---

## 📋 What the Script Does

✅ **Verifies** VS Code is installed
✅ **Copies** all files to `%APPDATA%\Code\User\prompts\`
✅ **Backs up** any existing installation
✅ **Initializes** local Git for version tracking
✅ **Displays** success confirmation

---

## 🔍 Manual Installation (Alternative)

If you prefer to install manually:

### 1. Clone Repository
```bash
git clone https://github.com/GredesCerber/presentation-master.git
cd presentation-master
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
- `INSTALL.md`
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

### Option 1: Re-run from repo
```powershell
cd presentation-master
git pull
.\install.ps1
```

### Option 2: Pull in prompts folder
```powershell
cd $env:APPDATA\Code\User\prompts
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
4. Run reload: `Shift+Ctrl+P` → `Reload Window`

---

## 🔐 Permissions & Safety

- ✅ Script is open-source (check `install.ps1`)
- ✅ Only copies official files from repo
- ✅ Automatically backs up existing installations
- ✅ No admin rights needed
- ✅ All files stay local (no cloud upload)

---

## 🌍 Cross-Platform Notes

### macOS / Linux

The PowerShell script is Windows-specific. For other platforms:

1. Clone the repository
2. Manually copy files to the appropriate prompts folder
3. Reload VS Code

Or use PowerShell Core (pwsh) if installed.

---

**Installation Script Version**: 1.0.0
**System Version**: 1.0.0
**Last Updated**: 2026-04-07