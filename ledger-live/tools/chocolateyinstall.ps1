$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.71.0-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = '5A64BFED7B3DF0F58FEB2C6A549C174D8C1B1C327E9B47F48F400E83F4E3B329'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

