$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Chia-Network/chia-blockchain/releases/download/1.2.7/ChiaSetup-1.2.7.exe'
$process	= "Chia"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'chia-network*'

  checksum      = '789C9391CD9CFFEEC63659FE5954C529A7CD9392FDBFE4CBECB07A3994AA23E3'
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
