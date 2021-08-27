$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Chia-Network/chia-blockchain/releases/download/1.2.4/ChiaSetup-1.2.4.exe'
$process	= "Chia"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'chia-network*'

  checksum      = '6421A31DBC54ACAD7F02C4EA7733C7CC8987789DADA96B0B1CFB622F1CA21AED'
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
