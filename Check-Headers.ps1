<#
.SYNOPSIS
    Checks that all Markdown files in the repository have the required MPL 2.0 header at the BOTTOM.

.DESCRIPTION
    This script validates that all .md files (except those in excluded directories)
    contain the LocalM-AiD MPL 2.0 copyright header at the END of the file.
    Headers at the bottom prevent Jekyll rendering issues.

.PARAMETER Fix
    If specified, automatically adds the header to files that are missing it.

.PARAMETER ShowDetails
    Provides detailed output about each file checked.

.EXAMPLE
    .\Check-Headers.ps1
    Checks all Markdown files and reports any missing headers.

.EXAMPLE
    .\Check-Headers.ps1 -Fix
    Checks and automatically adds missing headers at the bottom.

.NOTES
    LocalM-AiD: Enterprise Architecture Framework for AI-Assisted Development
    
    Copyright (c) 2025 Nilay Parikh
    
    This Source Code Form is subject to the terms of the Mozilla Public
    License, v. 2.0. If a copy of the MPL was not distributed with this
    file, You can obtain one at http://mozilla.org/MPL/2.0/.
    
    Author: Nilay Parikh
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [switch]$Fix,
    
    [Parameter(Mandatory=$false)]
    [switch]$ShowDetails
)

# Configuration
$ErrorActionPreference = "Stop"
$headerFile = ".eaf_header.txt"
$excludedDirs = @(".git", "node_modules", "vendor", "_site", ".sass-cache", ".jekyll-cache")

# Colors for output
$colors = @{
    Success = "Green"
    Warning = "Yellow"
    Error = "Red"
    Info = "Cyan"
}

function Write-ColorOutput {
    param(
        [string]$Message,
        [string]$Type = "Info"
    )
    Write-Host $Message -ForegroundColor $colors[$Type]
}

function Get-ExpectedHeader {
    if (-not (Test-Path $headerFile)) {
        Write-ColorOutput "ERROR: Header template file '$headerFile' not found!" "Error"
        exit 1
    }
    
    $header = Get-Content $headerFile -Raw
    return $header.Trim()
}

function Test-FileHasHeader {
    param(
        [string]$FilePath,
        [string]$ExpectedHeader
    )
    
    if (-not (Test-Path $FilePath)) {
        return $false
    }
    
    $content = Get-Content $FilePath -Raw -ErrorAction SilentlyContinue
    if ([string]::IsNullOrWhiteSpace($content)) {
        return $false
    }
    
    # Normalize line endings and whitespace for comparison
    $normalizedContent = $content -replace "`r`n", "`n" -replace "[ \t]+", " "
    $normalizedHeader = $ExpectedHeader -replace "`r`n", "`n" -replace "[ \t]+", " "
    
    # Check if the file ENDS with the header (at bottom, not top)
    return $normalizedContent.TrimEnd().EndsWith($normalizedHeader.TrimEnd())
}

function Add-HeaderToFile {
    param(
        [string]$FilePath,
        [string]$Header
    )
    
    try {
        $content = Get-Content $FilePath -Raw -ErrorAction SilentlyContinue
        
        # Add header at the END with proper spacing (bottom of file)
        $newContent = $content.TrimEnd() + "`n`n" + $Header + "`n"
        
        Set-Content -Path $FilePath -Value $newContent -NoNewline -Encoding UTF8
        Write-ColorOutput "  ✓ Added header to bottom of: $FilePath" "Success"
        return $true
    }
    catch {
        Write-ColorOutput "  ✗ Failed to add header to: $FilePath - $($_.Exception.Message)" "Error"
        return $false
    }
}

function Get-MarkdownFiles {
    param(
        [string]$Path = "."
    )
    
    $allFiles = Get-ChildItem -Path $Path -Recurse -Include "*.md" -File
    
    # Filter out excluded directories
    $filteredFiles = $allFiles | Where-Object {
        $filePath = $_.FullName
        $shouldInclude = $true
        
        foreach ($excludedDir in $excludedDirs) {
            if ($filePath -like "*\$excludedDir\*" -or $filePath -like "*/$excludedDir/*") {
                $shouldInclude = $false
                break
            }
        }
        
        $shouldInclude
    }
    
    return $filteredFiles
}

# Main execution
Write-ColorOutput "`n=== LocalM-AiD Framework - Header Check ===" "Info"
Write-ColorOutput "Repository: $PWD`n" "Info"

# Get expected header
$expectedHeader = Get-ExpectedHeader
Write-ColorOutput "✓ Loaded header template from: $headerFile" "Success"

# Get all Markdown files
$markdownFiles = Get-MarkdownFiles
Write-ColorOutput "Found $($markdownFiles.Count) Markdown file(s) to check`n" "Info"

# Check each file
$filesWithoutHeader = @()
$filesWithHeader = @()
$filesFailed = @()

foreach ($file in $markdownFiles) {
    $relativePath = $file.FullName.Replace((Get-Location).Path, "").TrimStart("\", "/")
    
    if ($ShowDetails) {
        Write-Host "Checking: $relativePath" -NoNewline
    }
    
    if (Test-FileHasHeader -FilePath $file.FullName -ExpectedHeader $expectedHeader) {
        $filesWithHeader += $relativePath
        if ($ShowDetails) {
            Write-ColorOutput " ✓" "Success"
        }
    }
    else {
        $filesWithoutHeader += $relativePath
        
        if ($Fix) {
            if ($ShowDetails) {
                Write-ColorOutput " ✗ Missing header, fixing..." "Warning"
            }
            
            if (Add-HeaderToFile -FilePath $file.FullName -Header $expectedHeader) {
                $filesWithHeader += $relativePath
                $filesWithoutHeader = $filesWithoutHeader | Where-Object { $_ -ne $relativePath }
            }
            else {
                $filesFailed += $relativePath
            }
        }
        else {
            if ($ShowDetails) {
                Write-ColorOutput " ✗" "Error"
            }
            Write-ColorOutput "  Missing header: $relativePath" "Warning"
        }
    }
}

# Summary
Write-ColorOutput "`n=== Summary ===" "Info"
Write-ColorOutput "Files with header: $($filesWithHeader.Count)" "Success"
Write-ColorOutput "Files without header: $($filesWithoutHeader.Count)" $(if ($filesWithoutHeader.Count -eq 0) { "Success" } else { "Warning" })

if ($filesFailed.Count -gt 0) {
    Write-ColorOutput "Files that failed to fix: $($filesFailed.Count)" "Error"
    Write-ColorOutput "`nFailed files:" "Error"
    $filesFailed | ForEach-Object { Write-ColorOutput "  - $_" "Error" }
}

if ($filesWithoutHeader.Count -gt 0 -and -not $Fix) {
    Write-ColorOutput "`nFiles missing header:" "Warning"
    $filesWithoutHeader | ForEach-Object { Write-ColorOutput "  - $_" "Warning" }
    Write-ColorOutput "`nRun with -Fix parameter to automatically add headers." "Info"
    exit 1
}
elseif ($filesWithoutHeader.Count -eq 0) {
    Write-ColorOutput "`n✓ All Markdown files have the required header!" "Success"
    exit 0
}
else {
    Write-ColorOutput "`n✓ Fixed all files successfully!" "Success"
    exit 0
}
