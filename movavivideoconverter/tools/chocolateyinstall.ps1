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
  checksum      = '54241BD8FC3D43BEF0F7DB3541AC2C0EDED5193A84BC51C2E7FA02C130DFF5D1'
  checksumType  = 'sha256'
  checksum64    = '9EE8481A7F96D15BE3BA4C443AC7124A5A068BF8311D41BB402691042854DCE0'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
