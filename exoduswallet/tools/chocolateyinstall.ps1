$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://downloads.exodus.com/releases/exodus-windows-x64-23.6.19.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'exoduswallet*'
  checksum64    = 'bf0bb59e7b962c3dd37661337aef78eaf0e40baf01cd07d91c6c191284221a03'
  checksumType64= 'sha256'
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
