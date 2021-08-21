$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/DeFiCh/app/releases/download/v2.6.2/DeFi-Wallet-Setup-2.6.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'defiwallet*'
  checksum64    = '06026CE671328075D34A00A8CF28000672C7735A78CC3844D3C42D3CA220E68A'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

