# ============================================================================
# Presentation Master — Automatic Installation Script
# ============================================================================

param(
    [string]$SourceDir = $PSScriptRoot,
    [switch]$Force
)

Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "Presentation Master System Installation" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Verify VS Code and GitHub Copilot are installed
Write-Host "[1/4] Checking VS Code and Copilot installation..." -ForegroundColor Yellow
$vscodePath = Get-Command code -ErrorAction SilentlyContinue
if (-not $vscodePath) {
    Write-Host "ERROR: VS Code not found in PATH" -ForegroundColor Red
    Write-Host "Please install VS Code from https://code.visualstudio.com" -ForegroundColor Red
    exit 1
}
Write-Host "VS Code found: $($vscodePath.Source)" -ForegroundColor Green

# Check for GitHub Copilot extension
$extensions = & code --list-extensions 2>$null
$hasCopilot = $extensions | Select-String -Pattern "github.copilot" -Quiet
if (-not $hasCopilot) {
    Write-Host "WARNING: GitHub Copilot extension not found" -ForegroundColor Yellow
    Write-Host "   Install it from VS Code marketplace" -ForegroundColor Yellow
} else {
    Write-Host "GitHub Copilot extension found" -ForegroundColor Green
}
Write-Host ""

# Step 2: Prepare destination folder
Write-Host "[2/4] Preparing installation directory..." -ForegroundColor Yellow
$promptsDir = "$env:APPDATA\Code\User\prompts"
if (-not (Test-Path $promptsDir)) {
    New-Item -ItemType Directory -Path $promptsDir -Force | Out-Null
    Write-Host "  Created: $promptsDir" -ForegroundColor Gray
}

# Backup existing installation if present
$skillFile = Join-Path $promptsDir "presentation-master.skill.md"
if ((Test-Path $skillFile) -and (-not $Force)) {
    $backupDir = "$promptsDir\.backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
    New-Item -ItemType Directory -Path $backupDir -Force | Out-Null
    
    Get-ChildItem -Path $promptsDir -Filter "*.md" -File | ForEach-Object {
        Copy-Item -Path $_.FullName -Destination $backupDir -Force
    }
    
    $githubDir = Join-Path $promptsDir ".github"
    if (Test-Path $githubDir) {
        Copy-Item -Path $githubDir -Destination $backupDir -Recurse -Force
    }
    
    Write-Host "  Backed up existing installation to: $backupDir" -ForegroundColor Cyan
}

Write-Host "Installation directory ready: $promptsDir" -ForegroundColor Green
Write-Host ""

# Step 3: Copy files
Write-Host "[3/4] Copying system files..." -ForegroundColor Yellow

$filesToCopy = @(
    "presentation-master.skill.md",
    "presentation-master.agent.md"
)

$copiedCount = 0
foreach ($file in $filesToCopy) {
    $source = Join-Path $SourceDir $file
    $dest = Join-Path $promptsDir $file
    
    if (Test-Path $source) {
        Copy-Item -Path $source -Destination $dest -Force
        $copiedCount++
        Write-Host "  + $file" -ForegroundColor Gray
    } else {
        Write-Host "  - Not found: $file" -ForegroundColor Yellow
    }
}

# Copy .github folder
$githubSource = Join-Path $SourceDir ".github"
$githubDest = Join-Path $promptsDir ".github"

if (Test-Path $githubSource) {
    if (-not (Test-Path $githubDest)) {
        New-Item -ItemType Directory -Path $githubDest -Force | Out-Null
    }
    
    Get-ChildItem -Path $githubSource -File | ForEach-Object {
        Copy-Item -Path $_.FullName -Destination $githubDest -Force
        $copiedCount++
        Write-Host "  + .github/$($_.Name)" -ForegroundColor Gray
    }
}

Write-Host "Copied $copiedCount files successfully" -ForegroundColor Green
Write-Host ""

# Step 4: Initialize Git tracking (optional)
Write-Host "[4/4] Setting up version tracking..." -ForegroundColor Yellow
$gitDir = Join-Path $promptsDir ".git"
if (-not (Test-Path $gitDir)) {
    try {
        Push-Location $promptsDir
        git init --quiet 2>&1 | Out-Null
        git add -A 2>&1 | Out-Null
        git commit -m "Initial installation of presentation-master system" --quiet 2>&1 | Out-Null
        Pop-Location
        Write-Host "Git repository initialized for version tracking" -ForegroundColor Green
    } catch {
        Write-Host "Git setup skipped (optional)" -ForegroundColor Cyan
    }
} else {
    Write-Host "Git repository already exists" -ForegroundColor Green
}
Write-Host ""

# Success message
Write-Host "=============================================" -ForegroundColor Green
Write-Host "Installation Complete!" -ForegroundColor Green
Write-Host "=============================================" -ForegroundColor Green
Write-Host ""
Write-Host "Files installed to:" -ForegroundColor Cyan
Write-Host "   $promptsDir" -ForegroundColor Gray
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "   1. Reload VS Code: Shift+Ctrl+P then Reload Window" -ForegroundColor Gray
Write-Host "   2. Open Copilot Chat: Ctrl+Shift+I" -ForegroundColor Gray
Write-Host "   3. Look for presentation-master in agent dropdown" -ForegroundColor Gray
Write-Host ""
Write-Host "Documentation: See README.md" -ForegroundColor Cyan
Write-Host ""
Write-Host "Happy presenting!" -ForegroundColor Green
Write-Host ""

# Ask if user wants to open VS Code
$response = Read-Host "Reload VS Code now? (y/n)"
if ($response -eq "y" -or $response -eq "Y") {
    Write-Host "Reloading VS Code..." -ForegroundColor Gray
    code --reuse-window .
}

Write-Host ""
