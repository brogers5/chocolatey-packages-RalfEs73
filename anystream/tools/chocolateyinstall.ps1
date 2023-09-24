$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.6.6.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.6.6.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '98BF8D13FE06B8A6951A6D3D8BB0727E6B84D38AE41EBD33764B6E81CAB4414C'
  checksumType  = 'sha256'
  checksum64    = 'A1C2DCC90271A5582D67E555CE1292D9E97CE133FFCE97C4164FFCD6BB58C4D5'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
