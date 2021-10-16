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
  checksum      = '7EF2587F19B8FE92783B3053A938BFCCD117E81C8FBFB0B6C6AA8F2872D0A05B'
  checksumType  = 'sha256'
  checksum64    = '9CF78F71361EB6D696D266281115D02A9E4F86FF1E569281CDE03FDD42F545D1'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
