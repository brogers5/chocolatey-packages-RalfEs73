$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://downloads.exodus.com/releases/exodus-windows-x64-23.2.27.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'exoduswallet*'
  checksum64    = 'A57EB06655E76DE7AE464FE146FD60184EA3477AD18AB414D6557A93F113CD9B'
  checksumType64= 'sha256'
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
