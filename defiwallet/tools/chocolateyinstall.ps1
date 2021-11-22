$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/DeFiCh/app/releases/download/v2.7.2/DeFi-Wallet-Setup-2.7.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'defiwallet*'
  checksum64    = 'F9A42B7871588AAA8EE29205D79F767CCB994BA6ECA5E2D4D445D466CA1432E4'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

