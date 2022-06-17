$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# $url64      = 'https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v2.42.0/ledger-live-desktop-2.42.0-win-x64.exe'
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.43.1-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = 'DCBE1D2514BFCE91FAD2F01E40117F634BE8A1A221FB6D0BE362D0431A06C37C'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

