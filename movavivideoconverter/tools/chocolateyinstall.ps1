$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://files.movavi.com/x32/MovaviVideoConverterSetupE.exe'
$url64      = 'https://files.movavi.com/x64/MovaviVideoConverterSetupE.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'movavivideoconverter*'
  checksum      = '01DDD9DD9BBA37ABE17042071B7E41136A11348F46A054A3A25FBBCC2F86EAAA'
  checksumType  = 'sha256'
  checksum64    = '01DDD9DD9BBA37ABE17042071B7E41136A11348F46A054A3A25FBBCC2F86EAAA'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
