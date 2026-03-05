# PowerShell script to enable global governance patterns

$TemplateDir = Join-Path $HOME ".git-templates"
$HooksDir = Join-Path $TemplateDir "hooks"
$MasterRepoDir = Get-Location

Write-Host "--- Setting up Global Git Governance ---" -ForegroundColor Cyan

# 1. Create global template directory
if (!(Test-Path $HooksDir)) {
    New-Item -ItemType Directory -Path $HooksDir -Force | Out-Null
    Write-Host "✔ Created global template hooks directory: $HooksDir" -ForegroundColor Green
}

# 2. Copy the pre-commit hook
$SourceHook = Join-Path $MasterRepoDir ".githooks\pre-commit"
Copy-Item $SourceHook (Join-Path $HooksDir "pre-commit") -Force
Write-Host "✔ Installed global pre-commit hook" -ForegroundColor Green

# 3. Configure global Git to use this template directory
git config --global init.templateDir $TemplateDir
Write-Host "✔ Configured global init.templateDir" -ForegroundColor Green

# 4. Setup global commit message template
$GlobalGitMessage = Join-Path $TemplateDir "gitmessage"
Copy-Item (Join-Path $MasterRepoDir ".gitmessage") $GlobalGitMessage -Force
git config --global commit.template $GlobalGitMessage
Write-Host "✔ Configured global commit.template" -ForegroundColor Green

Write-Host "--- Setup Complete! ---" -ForegroundColor Cyan
Write-Host "All future 'git init' commands will automatically include your governance hooks and templates."
