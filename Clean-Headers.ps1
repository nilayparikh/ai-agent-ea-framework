<#
.SYNOPSIS
    Removes old HTML comment headers from Markdown files.

.DESCRIPTION
    Cleans up files by removing old <!-- --> style headers while keeping
    the new [comment]: # style headers.
#>

[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"

function Remove-OldHeaders {
    param([string]$FilePath)
    
    $content = Get-Content $FilePath -Raw
    
    # Remove old HTML comment blocks (with (?s) for dot matches newline)
    $pattern = '(?s)<!--\s*LocalM-AiD:.*?-->\s*'
    $cleaned = $content -replace $pattern, ''
    
    # Clean up extra blank lines
    $cleaned = $cleaned -replace '(?m)^\s*$\n', "`n"
    $cleaned = $cleaned -replace '^\n{3,}', "`n`n"
    
    Set-Content -Path $FilePath -Value $cleaned -NoNewline -Encoding UTF8
    Write-Host "Cleaned: $FilePath" -ForegroundColor Green
}

# Get all Markdown files
$files = Get-ChildItem -Path . -Recurse -Include "*.md" -File | Where-Object {
    $_.FullName -notlike "*\.git\*" -and
    $_.FullName -notlike "*node_modules\*" -and
    $_.FullName -notlike "*_site\*"
}

Write-Host "`nCleaning $($files.Count) Markdown files..." -ForegroundColor Cyan

foreach ($file in $files) {
    Remove-OldHeaders -FilePath $file.FullName
}

Write-Host "`n✓ Cleanup complete!" -ForegroundColor Green
