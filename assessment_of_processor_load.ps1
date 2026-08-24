$cpu = (Get-CimInstance Win32_Processor).LoadPercentage

if ($cpu -lt 30) {
    Write-Host "Всё спокойно 🟢"
} elseif ($cpu -le 70) {
    Write-Host "Нагрузка средняя 🟡"
} else {
    Write-Host "Компьютер тормозит! 🔴"
}