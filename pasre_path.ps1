# Script parse file's path and displays information about him

$filePath = "C:\Users\Jack\Documents\report_2026.txt"


$messageTemplate = "{0}`n{1}`n{2}`n{3}"


$folderName = Split-Path $filePath -Parent

$fileName = Split-Path $filePath -Leaf 

$underscoreIndex = $filePath.IndexOf("_")
$dotIndex = $filePath.IndexOf(".")

$date = $filePath[($underscoreIndex + 1) .. ($dotIndex - 1)] -join ""

$fileExtension = $fileName.Substring($fileName.IndexOf("$date") + 4)


$messageTemplate -f $folderName, $fileName, $fileExtension, $date