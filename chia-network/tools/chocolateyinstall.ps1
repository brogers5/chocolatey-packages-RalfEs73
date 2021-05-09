$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download-chia-net.s3-us-west-2.amazonaws.com/install/ChiaSetup-1.1.5.exe'
$process	= "Chia"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'chia-network*'

  checksum      = '0672C4DF6D201CE86966BE618272E362287C1F4AFBBF731614D7327185008939'
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
