$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "to_migration.sql"

if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File |
    Where-Object { $_.FullName -ne $outputFile } |
    Sort-Object Name

foreach ($sqlFile in $sqlFiles) {
    Get-Content -Path $sqlFile.FullName | Add-Content -Path $outputFile
    Add-Content -Path $outputFile -Value ""
}

Write-Host "Todos arquivos foram combinados em $outputFile"
