$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.6.7.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.6.7.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '112655A2FB2CB671750E0FF0F9E74C269E72DCF19011D65D85AD2A7088645139'
  checksumType  = 'sha256'
  checksum64    = 'B3B386B16AB61B4842AB8B730E9D4D98C87195D9BC75348D4C3865FD9E3784AE'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
