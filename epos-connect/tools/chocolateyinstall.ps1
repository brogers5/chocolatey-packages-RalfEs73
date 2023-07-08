$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.eposaudio.com/globalassets/___image-library/_enterprise/files/english/epos-connect/epos-connect-7.6.1/eposconnect_7.6.1.42114.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = '157DF526AD85B926E1DD4C7E504502F025B10BE660D284DD778150C34AAB320E'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
