$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.6.9.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.6.9.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '00C9000B99461F6F106760EFEDE7A74FBE16D1039E377109154A09FFC2B439EA'
  checksumType  = 'sha256'
  checksum64    = '9BF41B9B2020FB5C273A0085C844FDF867535E91AAFD7A14AC4B9A8C09DA7FF7'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
