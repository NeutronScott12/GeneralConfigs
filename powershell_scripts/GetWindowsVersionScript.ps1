$name=(Get-WmiObject Win32_OperatingSystem).caption
$bit=(Get-WmiObject Win32_OperatingSystem).OSArchitecture

$vert = " Version:"
$ver=(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId

$buildt = " Build:"
$build= (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").BuildLabEx -match '^[0-9]+\.[0-9]+' |  % { $matches.Values }

$installd = Get-ComputerInfo -Property WindowsInstallDateFromRegistry

Write-host $installd
Write-Host $name, $bit, $vert, $ver, "enter code here" $buildt, $build, $installd
