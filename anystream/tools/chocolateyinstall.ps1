$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.8.5.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.8.5.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '049935F13C070FD00BFC1719D7C6B02F888C891B03F8C536672E2F9A292F0C23'
  checksumType  = 'sha256'
  checksum64    = 'C6A9D0EE43AEB2C3613519905F9ADE0E2EF3BA3CD856B602C0F0301F422EE9AD'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
