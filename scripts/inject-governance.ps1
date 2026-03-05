param (
    [Parameter(Mandatory=$true)]
    [string]$TargetPath
)

$MasterRepoDir = Get-Location
$SourceFolders = @(".antigravity", ".github", "docs")
$SourceFiles = @(".gitignore", ".gitmessage", "CONTRIBUTING.md")

if (!(Test-Path $TargetPath)) {
    Write-Error "Target path does not exist: $TargetPath"
    exit 1
}

Write-Host "--- Injecting Governance to: $TargetPath ---" -ForegroundColor Cyan

foreach ($folder in $SourceFolders) {
    $src = Join-Path $MasterRepoDir $folder
    $dest = Join-Path $TargetPath $folder
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $dest -Recurse -Force
        Write-Host "✔ Injected folder: $folder" -ForegroundColor Green
    }
}

foreach ($file in $SourceFiles) {
    $src = Join-Path $MasterRepoDir $file
    $dest = Join-Path $TargetPath $file
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $dest -Force
        Write-Host "✔ Injected file: $file" -ForegroundColor Green
    }
}

Write-Host "--- Injection Complete! ---" -ForegroundColor Cyan
Write-Host "Don't forget to run 'git init' if you haven't already to activate the global hooks."
