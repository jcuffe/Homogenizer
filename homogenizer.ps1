param (
    [string]$core_user,
    [string]$core_char
)

$users = @(Get-Location | Get-ChildItem | foreach { if ($_ -match '^core_user_(\d+)') { $matches[1] } }).Where{ $_ -ne $core_user }
$chars = @(Get-Location | Get-ChildItem | foreach { if ($_ -match '^core_char_(\d+)') { $matches[1] } }).Where{ $_ -ne $core_char }
$users | foreach { Copy-Item -Path ".\core_user_$core_user.dat" -Destination ".\core_user_$_.dat" -Force }
$chars | foreach { Copy-Item -Path ".\core_char_$core_char.dat" -Destination ".\core_char_$_.dat" -Force }