$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.2.5.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.2.5.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'B6F8067D64E6E01A05A6C6FC91240ED5C4EF81CABD3F481E80A366EA811D3EAC'
  checksumType  = 'sha256'
  checksum64    = 'B14D72BA5D2635B2CDB708871DAD5E4B893CA196889B2C696DD3A424079CF461'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
