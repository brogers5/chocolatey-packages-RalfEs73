$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Chia-Network/chia-blockchain/releases/download/1.1.4/ChiaSetup-1.1.4.exe'
$process	= "Chia"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'chia-network*'

  checksum      = '393A21D66ADF553075DCDCA4CD742F580A383DCDB87F34A1B71F73B9A1E61CAA'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

$CheckProcess = Get-Process | Where-Object {$_.ProcessName -eq $process}
If($CheckProcess -eq $null){
	Write-Host "Prozess wird aktuell nicht ausgeführt"
	} 
	else {
	Write-Host "Prozess wird aktuell ausgeführt"
    Stop-Process -Name $process
	}

Install-ChocolateyPackage @packageArgs
