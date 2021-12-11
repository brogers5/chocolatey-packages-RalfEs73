$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.2.7.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.2.7.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'ABD2D5B8EA207F8059CB39D4DD90D922ECC4EE28F6BE0495995842E398635EDE'
  checksumType  = 'sha256'
  checksum64    = 'A7D200DBBB7C1BD8E6FD70FEC06B3F6D617D9535790A8F54DF52881F1D9CDDFA'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
