$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.5.2_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.5.2_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'BED18CDFA6799A14FF33EB13F2ADC50DAE430E6BDA395050ACB4F3A2F7010880'
  checksumType  = 'sha256'
  checksum64    = '5540A42B0E36033481A7DADBCA7BD4A90278F53E8C730FA1D10D2A5C4D96F668'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
