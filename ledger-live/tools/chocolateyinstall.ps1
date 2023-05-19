$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://download.live.ledger.com/ledger-live-desktop-2.58.0-win-x64.exe'


$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'ledger-live*'
  checksum64    = 'BC253B483A2235C85D25C9A4590EB2E39F6E839773FDADE2D31CF617B8CEE594'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

