$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.3.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.3.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '155C3D1561DF6E4035C47DBEEE124685386EB66AC98669F99172B6C99D59584F'
  checksumType  = 'sha256'
  checksum64    = '7FFD789FFA07632EEC911EA9380988A54E30B29FB31AC3BE7D559661D1DE7AF5'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
