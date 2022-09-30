$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# $url64      = 'https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v2.42.0/ledger-live-desktop-2.42.0-win-x64.exe'
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.48.0-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = 'C19FDB10BF5D1B3A7665F985E0D09A6B0A7326F5DFAA9732025E50AEFEDF1A95'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

