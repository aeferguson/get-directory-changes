param(
    [string]$Path = "$PSScriptRoot"
)
$searchDate = [datetime]::Today.AddDays(-1).AddHours(07)
#make this into a parameter too, later


Get-ChildItem $dir -File -Recurse | 
    Where-Object { $_.LastWriteTime -gt ($searchDate)} | select-Object FullName, LastWriteTime -First 100 | Sort-Object -Property LastWriteTime -Descending