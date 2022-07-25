$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.0.2_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.0.2_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '51BE1A3B8A4C149C780696172420D5EDADE04DC8E19FA179FD56C35E76F02024'
  checksumType  = 'sha256'
  checksum64    = '4E77CA8AEDBCB610E2C87CA1801D9FFC399E4A97137A7F9AA65791E9D1719C52'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
