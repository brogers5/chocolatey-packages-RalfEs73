$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/b/d/8/bd8409df-7b80-4ef7-89c5-5a7a941a5093/Setup.Microsoft.PowerAutomate.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'powerautomatedesktop*'

  checksum      = '65140FBF3F0CBC89B5D930C195B501318E2E436B894B51937B4123D3C2DB0C13'
  checksumType  = 'sha256'

  silentArgs   = '/S -accepteula'
}

Install-ChocolateyPackage @packageArgs
