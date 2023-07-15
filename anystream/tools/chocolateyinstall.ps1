$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.8.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.8.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '4280688593B434509B64E9AEE67889DCA8FBAEF219EA4EDA0522253BE3AE6B60'
  checksumType  = 'sha256'
  checksum64    = '3EBE5B69B746749C2ABBE6633341B2550A8720E153579279F91512548B7FC643'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
