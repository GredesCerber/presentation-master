# ============================================================================
# Presentation Master — Automatic Installation Script
# ============================================================================
# This script clones the GitHub repo and deploys to VS Code prompts folder
# Usage: .\install.ps1
# ============================================================================

param(
    [string]$RepoUrl = "https://github.com/GredesCerber/presentation-master-skill.git",
    [string]$TempDir = "$env:TEMP\presentation-master-setup"
)

Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "🚀 Presentation Master System Installation" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Verify VS Code is installed
Write-Host "[1/5] Checking VS Code installation..." -ForegroundColor Yellow
$vscodePath = Get-Command code -ErrorAction SilentlyContinue
if (-not $vscodePath) {
    Write-Host "❌ ERROR: VS Code not found in PATH" -ForegroundColor Red
    Write-Host "Please install VS Code from https://code.visualstudio.com" -ForegroundColor Red
    exit 1
}
Write-Host "✅ VS Code found: $($vscodePath.Source)" -ForegroundColor Green
Write-Host ""

# Step 2: Clone repository
Write-Host "[2/5] Cloning repository..." -ForegroundColor Yellow
if (Test-Path $TempDir) {
    Remove-Item -Path $TempDir -Recurse -Force -ErrorAction SilentlyContinue
}
New-Item -ItemType Directory -Path $TempDir -Force | Out-Null

try {
    Push-Location $TempDir
    git clone $RepoUrl . 2>&1 | Out-Null
    if ($LASTEXITCODE -ne 0) {
        throw "Git clone failed"
    }
    Pop-Location
    Write-Host "✅ Repository cloned successfully" -ForegroundColor Green
} catch {
    Write-Host "❌ ERROR: Failed to clone repository" -ForegroundColor Red
    Write-Host "Make sure Git is installed and you have internet access" -ForegroundColor Red
    exit 1
}
Write-Host ""

# Step 3: Prepare destination folder
Write-Host "[3/5] Preparing installation directory..." -ForegroundColor Yellow
$promptsDir = "$env:APPDATA\Code\User\prompts"
if (-not (Test-Path $promptsDir)) {
    New-Item -ItemType Directory -Path $promptsDir -Force | Out-Null
}

# Backup existing installation if present
if ((Get-ItemProperty -Path "$promptsDir\presentation-master.skill.md" -ErrorAction SilentlyContinue) -ne $null) {
    $backupDir = "$promptsDir\.backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
    New-Item -ItemType Directory -Path $backupDir -Force | Out-Null
    Copy-Item -Path "$promptsDir\*.md" -Destination $backupDir -Force -ErrorAction SilentlyContinue
    Copy-Item -Path "$promptsDir\.github" -Destination $backupDir -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "ℹ️  Backed up existing installation to: $backupDir" -ForegroundColor Cyan
}

Write-Host "✅ Installation directory ready: $promptsDir" -ForegroundColor Green
Write-Host ""

# Step 4: Copy files
Write-Host "[4/5] Copying system files..." -ForegroundColor Yellow

$filesToCopy = @(
    "README.md",
    "SETUP.md",
    "START_HERE.md",
    "QUICK_REFERENCE.md",
    "presentation-master.skill.md",
    "presentation-master.agent.md",
    "self-improvement.agent.md",
    ".github"
)

$copiedCount = 0
foreach ($file in $filesToCopy) {
    $source = "$TempDir\$file"
    $dest = "$promptsDir\$file"
    
    if (Test-Path $source) {
        if ((Get-Item $source) -is [System.IO.DirectoryInfo]) {
            Copy-Item -Path $source -Destination $dest -Recurse -Force -ErrorAction SilentlyContinue
        } else {
            Copy-Item -Path $source -Destination $dest -Force -ErrorAction SilentlyContinue
        }
        $copiedCount++
        Write-Host "  ✓ Copied: $file" -ForegroundColor Gray
    }
}

Write-Host "✅ Copied $copiedCount items successfully" -ForegroundColor Green
Write-Host ""

# Step 5: Initialize Git (optional - for future improvements tracking)
Write-Host "[5/5] Initializing Git integration..." -ForegroundColor Yellow
if (-not (Test-Path "$promptsDir\.git")) {
    try {
        Push-Location $promptsDir
        git clone --bare $RepoUrl .git 2>&1 | Out-Null
        Pop-Location
        Write-Host "✅ Git repository configured for version tracking" -ForegroundColor Green
    } catch {
        Write-Host "ℹ️  Git setup optional - skipped" -ForegroundColor Cyan
    }
} else {
    Write-Host "✅ Git repository already configured" -ForegroundColor Green
}
Write-Host ""

# Cleanup
Remove-Item -Path $TempDir -Recurse -Force -ErrorAction SilentlyContinue

# Success message
Write-Host "=============================================" -ForegroundColor Green
Write-Host "✅ Installation Complete!" -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Green
Write-Host ""
Write-Host "📍 Files installed to:" -ForegroundColor Cyan
Write-Host "   $promptsDir" -ForegroundColor Gray
Write-Host ""
Write-Host "🚀 Next steps:" -ForegroundColor Cyan
Write-Host "   1. Reload VS Code: Shift+Ctrl+P → 'Reload Window'" -ForegroundColor Gray
Write-Host "   2. Open Copilot Chat: Ctrl+Shift+I" -ForegroundColor Gray
Write-Host "   3. Look for 'presentation-master' in agent dropdown" -ForegroundColor Gray
Write-Host ""
Write-Host "📖 Documentation:" -ForegroundColor Cyan
Write-Host "   Start with: $promptsDir\START_HERE.md" -ForegroundColor Gray
Write-Host ""
Write-Host "Happy presenting! 🎉" -ForegroundColor Green
Write-Host ""

# Ask if user wants to open documentation
$response = Read-Host "Open START_HERE.md now? (y/n)"
if ($response -eq "y" -or $response -eq "Y") {
    Start-Process -FilePath "$promptsDir\START_HERE.md"
    Write-Host "Opening START_HERE.md..." -ForegroundColor Gray
}

Write-Host ""