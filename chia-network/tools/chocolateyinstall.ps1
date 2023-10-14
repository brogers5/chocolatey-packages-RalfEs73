$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Chia-Network/chia-blockchain/releases/download/2.1.1/ChiaSetup-2.1.1.exe'
# $url        = 'https://download.chia.net/latest/Setup-Win64.exe'
$process	= "Chia"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'chia-network*'

  checksum      = '77EEB501C4B97ACDF45B256DD826136884EF3DA67BA79A70C48C40A9BD28E597'
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
