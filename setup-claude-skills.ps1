# Creates a Windows junction from .claude\skills to .agents\skills (no copying).
# Safe: refuses to overwrite any existing directory or link with a different target.
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$canonical = Join-Path $root '.agents\skills'
$claudeDir = Join-Path $root '.claude'
$link = Join-Path $claudeDir 'skills'
if (-not (Test-Path -LiteralPath $canonical -PathType Container)) {
    throw "Canonical Skill directory not found: $canonical"
}
New-Item -ItemType Directory -Path $claudeDir -Force | Out-Null
$existing = Get-Item -LiteralPath $link -Force -ErrorAction SilentlyContinue
if ($null -ne $existing) {
    if ($existing.LinkType -eq 'Junction') {
        $expected = (Resolve-Path -LiteralPath $canonical).Path.TrimEnd('\')
        $actual = ([string]$existing.Target).TrimEnd('\')
        if ($actual -ieq $expected) {
            Write-Host "Already linked correctly: $link -> $actual" -ForegroundColor Green
            exit 0
        }
    }
    throw "Path already exists: $link. Review or back it up manually; nothing was removed."
}
New-Item -ItemType Junction -Path $link -Target (Resolve-Path -LiteralPath $canonical).Path | Out-Null
Write-Host "Created: $link -> $canonical" -ForegroundColor Green
Write-Host 'Restart Claude Code and check /skills. Junction discovery depends on Claude Code version.'
