$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.69.0-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = '2BE36C60714B77B4F504AD8E66E408A87875B11BD0E0248723869A347E3D1A02'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

