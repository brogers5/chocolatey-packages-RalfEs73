$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/firoorg/firo/releases/download/v0.14.11.0/firo-0.14.11.0-win64-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'firowallet*'
  checksum64    = '76AEB02F673050F0C11082F79668B8686F89DB68FDD0CD5A3B5944F0FEF85344'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

