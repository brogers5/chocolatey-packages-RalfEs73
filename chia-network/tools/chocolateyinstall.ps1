$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Chia-Network/chia-blockchain/releases/download/1.2.6/ChiaSetup-1.2.6.exe'
$process	= "Chia"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'chia-network*'

  checksum      = 'D54A7CDEAFB817D2DB67B1D61BE14214A758B24B65DCEB0E780A08D5F55864AB'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

$CheckProcess = Get-Process | Where-Object {$_.ProcessName -eq $process}
If($CheckProcess -eq $null){
	Write-Host "Process is not currently running."
	} 
	else {
	Write-Host "Process is currently running. Killing chia process."
    Stop-Process -Name $process
	}

Install-ChocolateyPackage @packageArgs
