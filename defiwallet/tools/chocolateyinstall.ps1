$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/DeFiCh/app/releases/download/v3.2.8/DeFi-Wallet-Setup-3.2.8.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'defiwallet*'
  checksum64    = 'EA58897413D3D3B3004427C6DEA422E69201000A478B03AC511F5142F4EAABFD'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

