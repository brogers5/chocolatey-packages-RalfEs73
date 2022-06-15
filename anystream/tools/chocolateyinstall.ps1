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
  checksum      = '460374DAF5406000D5B8D486E4DE5F5CDD510CD9B4426DEAEB8BC9165CA785D7'
  checksumType  = 'sha256'
  checksum64    = '27915A48AD0BF06F742B78D463D02CFC01F8716C7654895C2E5B3D53A5D95042'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
