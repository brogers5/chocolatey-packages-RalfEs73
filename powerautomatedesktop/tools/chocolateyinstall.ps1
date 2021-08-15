$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/b/d/8/bd8409df-7b80-4ef7-89c5-5a7a941a5093/Setup.Microsoft.PowerAutomateDesktop.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'powerautomatedesktop*'

  checksum      = 'AFD93377657B68C4EF930E1AFD623AB2CC598C7CA3BDA2486F446AD692CD5EB9'
  checksumType  = 'sha256'

  silentArgs   = '/S -accepteula'
}

Install-ChocolateyPackage @packageArgs
