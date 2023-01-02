$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.9.5_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.9.5_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '2FBE2A338A3CFE09320E70077B94292678216A7339D36BBBD6AF7F54D5D605E0'
  checksumType  = 'sha256'
  checksum64    = '6C1336C31FCCE39F51AC2C9E64936BE8A621027119B0F0D997EBDEA29462F09D'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
