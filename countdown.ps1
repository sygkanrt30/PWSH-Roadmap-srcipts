$n = Read-Host

foreach($i in $n..0) {
    if ($i -eq 0) {
        Write-Host "Let's go"
        break
    }
    Write-Host $i
}