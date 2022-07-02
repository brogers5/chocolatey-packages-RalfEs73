$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/DeFiCh/app/releases/download/v2.15.0/DeFi-Wallet-Setup-2.15.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'defiwallet*'
  checksum64    = 'ACD9BA964F5FD097AAC7826D89E3F1908B14DE433D1A6EA7EC0866DDF4CAF1DA'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

