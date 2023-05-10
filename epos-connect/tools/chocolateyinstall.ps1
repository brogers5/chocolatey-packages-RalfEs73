$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.eposaudio.com/globalassets/_enterprise_media/software/epos-connect/7.5.0/win/eposconnect_7.5.0.39710.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = 'E0DA25ABFF9672DCD9C018A44E63C2D971317DE68B441180643C5D2F048557C8'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
