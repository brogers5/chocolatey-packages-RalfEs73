$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.eposaudio.com/globalassets/___image-library/_enterprise/files/english/epos-connect/epos-connect-7.7.0/eposconnect_7.7.0.44457.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = 'C67D8A52E2AD528729A2928E9031671026D9D15788A0786474A08F507DEB0172'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
