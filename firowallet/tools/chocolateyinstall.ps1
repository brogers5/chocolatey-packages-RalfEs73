$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/firoorg/firo/releases/download/v0.14.8.0/firo-0.14.8.0-win64-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'firowallet*'
  checksum64    = '619714F131407C4148822A2D718774FC1B048131F41209C59F167BD3DD592FAD'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

