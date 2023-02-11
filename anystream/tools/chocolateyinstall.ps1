$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.1.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.1.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '5D25646EBB0B7B54458EA286502A35C17BAC5A205FD201C437E0D796A02EFA83'
  checksumType  = 'sha256'
  checksum64    = '5220374D9F557DB0B291DC359D077FCBE0CD479723065307DFAB2A08DD865BBD'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
