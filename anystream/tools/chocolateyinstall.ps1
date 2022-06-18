$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.8.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.8.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'CA95C0FCCE6AC1904513127084C6EBFC3017FE957993A2CCD415C4A90C8D57B2'
  checksumType  = 'sha256'
  checksum64    = 'E777B4EA1C252DE45892B278AC089C63021D953BE1414884A990E9A3C37BD775'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
