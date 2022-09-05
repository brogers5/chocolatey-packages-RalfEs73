$ErrorActionPreference = 'Stop';
$packageName = 'copy-dialog-lunar-lander' 
$Shortcut    = 'Copy Dialog Lunar Lander.lnk'

$CheckProcess = Get-Process | Where-Object {$_.ProcessName -eq "CopyDialogLunarLander"}
If($CheckProcess -eq $null){
	Write-Host "Process is not currently running."
	} 
	else {
	Write-Host "Process is currently running. Killing process."
    Stop-Process -Name CopyDialogLunarLander
	}
	
Remove-Item -Path "$env:Public\Desktop\$Shortcut"
Remove-Item "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut"
