$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.55.0-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = 'D723AB7A4D88AB15D65700AEF30B70FD4BAF66F07CE34E6B0D3004B465C51F2A'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

