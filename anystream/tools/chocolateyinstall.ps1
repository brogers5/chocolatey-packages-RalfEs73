$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.4.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.4.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '084B912EE8DEEC4AC8B5A3EBBC0363B671322604CE4139A53C5AD22A0C61702E'
  checksumType  = 'sha256'
  checksum64    = '47AE7F019F1E682348CC88386729C2604C24F858B7D7EB9150230D2064FAEB35'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
