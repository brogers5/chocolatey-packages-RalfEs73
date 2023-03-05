$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.2.3_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.2.3_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'A693F17F9B010EAFE1849A40DFC0A7E98E767596A14A65D95200A0800BABB13C'
  checksumType  = 'sha256'
  checksum64    = 'A693F17F9B010EAFE1849A40DFC0A7E98E767596A14A65D95200A0800BABB13C'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
