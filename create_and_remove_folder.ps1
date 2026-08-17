# Script create folder with some files path after that create folder in folder and in the end script remove all that

$desktopPath = [Environment]::GetFolderPath("Desktop")

$folderName = "Test_folder"

Set-Location $desktopPath

New-Item -ItemType Directory -Name $folderName

Set-Location $folderName

$fileNameSample = "file{0}.txt"

New-Item -ItemType File -Name ($fileNameSample -f "1")
New-Item -ItemType File -Name ($fileNameSample -f "2")
New-Item -ItemType File -Name ($fileNameSample -f "3")


$backupFolderName = "backup"

New-Item -ItemType Directory -Name $backupFolderName

Copy-Item ($fileNameSample -f "1") $backupFolderName

Set-Location ..

Remove-Item -Path $folderName -Recurse
