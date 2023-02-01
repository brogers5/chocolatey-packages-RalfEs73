$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.eposaudio.com/globalassets/___image-library/_enterprise/files/english/epos-connect/epos-connect-7.4.0/eposconnect_7.4.0.37648.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = '5BBADA3F60EBEACC14376C636343F944FFA30DC2DB8AF8A2EA7CFDB5D296A381'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
