$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/DeFiCh/app/releases/download/v2.21.0/DeFi-Wallet-Setup-2.21.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'defiwallet*'
  checksum64    = '20FCDE83A6030C976279FE30D2639D1AFCE2342FD6F07F8244F3AD9907D49729'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

