$desktopPath = [Environment]::GetFolderPath("Desktop")

$fileName = "system.txt"

Set-Location $desktopPath


New-Item -Path $fileName -ItemType File

$computerInfo = Get-ComputerInfo

Add-Content -Path $fileName -Value $computerInfo.CsName -Encoding utf8
Add-Content -Path $fileName -Value $computerInfo.CsUserName -Encoding utf8
Add-Content -Path $fileName -Value $computerInfo.WindowsVersion -Encoding utf8
Add-Content -Path $fileName -Value ([math]::Round($computerInfo.CsTotalPhysicalMemory / 1GB, 2)) -Encoding utf8
Add-Content -Path $fileName -Value (Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5) -Encoding utf8