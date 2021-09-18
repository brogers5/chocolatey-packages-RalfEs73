$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v2.33.1/ledger-live-desktop-2.33.1-win.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = 'C7395C632B8B83FB17F9B32E300EAE14008E9BDFB7864038E5B74D2104F8EDA2'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

