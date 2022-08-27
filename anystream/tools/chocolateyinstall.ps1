$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.2.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.2.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '3B1687AFFD44BAA37C0A25433307CAC3A12359C63E23300EE57A2F6F2F4946F9'
  checksumType  = 'sha256'
  checksum64    = 'F5D5BB84750C8420DAB36E0D9C15EB33A0ABA48D26F6FC89C3472868224845AF'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
