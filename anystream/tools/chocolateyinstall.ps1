$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.9.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.9.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'A0BFDDF134B3737DB0B6F20D1BB6C8A31835755585E26FE929802E5C648998B3'
  checksumType  = 'sha256'
  checksum64    = '68D547D540C1FC52B0E4CE3BDF8E194E4DE6EFC1FD0227F1D385311DEE8FE1E9'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
