$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.7.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.7.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'B2EA7197A0322355886AA1FD0E150DCBDD0D6E2F3FA834FE7262EC72FFD9F76D'
  checksumType  = 'sha256'
  checksum64    = '1BDD831AAF59D5AF6100B77FE9E268AABFFC1113975F81EBE3EBE2A59CFB6D58'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
