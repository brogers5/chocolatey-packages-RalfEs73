$CheckProcess = Get-Process | Where-Object {$_.ProcessName -eq "CopyDialogLunarLander"}
If($CheckProcess -eq $null){
	Write-Host "Process is not currently running."
	} 
	else {
	Write-Host "Process is currently running. Killing chia process."
    Stop-Process -Name CopyDialogLunarLander
	}