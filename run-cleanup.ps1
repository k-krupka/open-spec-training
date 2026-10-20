# Cleanup script for removing output and spec directories
# Run before every training conducted on the subject

$ErrorActionPreference = 'Stop'

$outputPath = Join-Path $PSScriptRoot '10-demo-prompts-vibe-coding\output-web-page'
$secondDirectoryPath = Join-Path $PSScriptRoot '40-demo-spec-drive-development-with-open-spec\output-web-page'
$specsPath = Join-Path $PSScriptRoot 'openspec\specs'
$archivePath = Join-Path $PSScriptRoot 'openspec\changes'

if (Test-Path -LiteralPath $outputPath) {
	Remove-Item -LiteralPath $outputPath -Recurse -Force
}

if (Test-Path -LiteralPath $secondDirectoryPath) {
	Remove-Item -LiteralPath $secondDirectoryPath -Recurse -Force
}

if (Test-Path -LiteralPath $specsPath) {
	Remove-Item -LiteralPath $specsPath -Recurse -Force
}

if (Test-Path -LiteralPath $archivePath -PathType Container) {
	Get-ChildItem -LiteralPath $archivePath -Force | ForEach-Object {
		Remove-Item -LiteralPath $_.FullName -Recurse -Force
	}
}
