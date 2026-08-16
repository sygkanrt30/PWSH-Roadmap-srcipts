$CurrentTime = Get-Date
$NewYear = Get-Date -Year 2027 -Month 1 -Day 1 -Hour 0 -Minute 0 -Second 0

$TimeUntilNewYear = $NewYear - $CurrentTime

$Message = "Hello $([Environment]::UserName) today is $($CurrentTime.ToString('dd-MM-yyyy')). Day until New Year: $($TimeUntilNewYear.Days))"

$Message