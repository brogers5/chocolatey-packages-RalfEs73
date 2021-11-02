$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.2.4.1_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.2.4.1_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '8156E8047DC5ED1D57E1DEF769C507028AE4B1A4AE4931BD02EF524679AC9E70'
  checksumType  = 'sha256'
  checksum64    = '469C21C37701A94525FE7A4B813214DD304A0E13C6FEDD211A996543A66E34B9'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
