$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.eposaudio.com/contentassets/0539b19ad7304ef7bc60474793ee559a/epos_connect_win_4.6.0.1483.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = '7B7E02C2CE006E103414CD48FCF2BB986C71AFE83FF2DE324B88358AA360F4B2'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
