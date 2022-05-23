$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.6.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.6.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '7D5A19EB229B3F4C9126B7900DEF25BA4F020E0DA566CC276772309AFFB0FBBF'
  checksumType  = 'sha256'
  checksum64    = '09293B312CA80DAD2EC08FE9E0E5C35497EDBAAF040F8FEDFB652A3CB83B9BEF'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
