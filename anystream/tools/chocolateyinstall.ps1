$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.6.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.6.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '844781EC754DB4E615D58657AF8FC2343C6ACA722D7814E7D8882EF8C4E27404'
  checksumType  = 'sha256'
  checksum64    = 'AFA378B12258165E26473B6E35DA68D1BE625C6BA268E06730C6A989058D132D'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
