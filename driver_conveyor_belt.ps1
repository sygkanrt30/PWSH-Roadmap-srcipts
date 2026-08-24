$desktopPath = [Environment]::GetFolderPath("Desktop")

$fileName = "drivers.txt"

$targetPath = $desktopPath + "\" + $fileName

New-Item -Path $targetPath -ItemType File

Get-ChildItem -Path "C:\Windows\System32\drivers\etc" | 
    ForEach-Object { 
        Write-Host ($_.Name + ":" + $_.Length) 
    } | 
    Sort-Object { [int]($_ -split ':')[1] } -Descending | 
    Add-Content -Path $targetPath
