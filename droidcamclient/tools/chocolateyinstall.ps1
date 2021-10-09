$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://files.dev47apps.net/win/DroidCam.Setup.6.5.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'droidcamclient*'

  checksum      = '9CD8D4D9BBADBCF39BE38ABB1168FF6A3BB6B63E5840814BC55D5281EA058D5E'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
