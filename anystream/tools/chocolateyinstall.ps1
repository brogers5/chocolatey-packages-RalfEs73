$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.7.1.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.7.1.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'AE526B8EAD113029AF61D0D4BE00468618B693E546D1321FF430E89016CD281E'
  checksumType  = 'sha256'
  checksum64    = 'B629EDE3D85902928E67650DE15F4E2DB40BEC0EEDF42C2FE6E1884C6686B3A9'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
