$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.0.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.0.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'A7D2C4EB2A72565BA3705AE52D2B7875296EAC82FE9F3E5F347430834E264540'
  checksumType  = 'sha256'
  checksum64    = '6403093462FFDDEFB0C49FCEE2959E5475A2D98B25B46994AD68A4C85391AF21'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
