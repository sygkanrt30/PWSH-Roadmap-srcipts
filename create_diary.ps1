# Script create diary, fill it and output count of rows

$desktopPath = [Environment]::GetFolderPath("Desktop")

$fileName = "diary.txt"

Set-Location $desktopPath


New-Item -Path $fileName -ItemType File

Add-Content $fileName -Value "[2026-08-14 10:00] Начал изучать PowerShell`n[2026-08-14 11:00] Научился писать в файл`n[2026-08-14 12:00] Уже всё понимаю!" -Encoding utf8


Write-host (Get-Content $fileName -Encoding utf8)

Write-Host "Количество строк: $((Get-Content $fileName -Encoding utf8 | Measure-Object -Line).Lines)"