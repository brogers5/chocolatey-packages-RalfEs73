$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.msp360.com/CloudBerryBackup_v7.2.0.286DESKTOP.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'cloudberrybackup*'

  checksum      = '89D41ADAA9F9C5414A8574F13D29D14D2402B334BF2FEE3CC55BF25A83D02DBA'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
