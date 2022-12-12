$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/b/d/8/bd8409df-7b80-4ef7-89c5-5a7a941a5093/Setup.Microsoft.PowerAutomate.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'powerautomatedesktop*'

  checksum      = 'C4A93D1AFE0DE3A5713275994830DF88757AB5E7C7F5F4834D49735D4FA380F9'
  checksumType  = 'sha256'

  silentArgs   = '/S -accepteula'
}

Install-ChocolateyPackage @packageArgs
