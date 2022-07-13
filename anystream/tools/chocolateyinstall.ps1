$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.0.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.0.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '5FA0F7A527327A86655195EACF2621345C605F09012BABD409F746BA49BBD843'
  checksumType  = 'sha256'
  checksum64    = 'E06678056FBDACDCBDD0B6DC01B2593CC24AE42DCCDE42C20AACEDF993D5F3B0'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
