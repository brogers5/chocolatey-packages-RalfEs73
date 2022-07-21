$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# $url64      = 'https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v2.42.0/ledger-live-desktop-2.42.0-win-x64.exe'
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.44.0-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = '02DADBB46F392922136651DAAC778CFAA5E86E1B47E19A5C7047A7A495208583'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

