$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.9.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.9.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'D6453165B2EEDE9ABA21B5D27979FCF0C0A79B9E6085C3A858DC3FB8523166B6'
  checksumType  = 'sha256'
  checksum64    = '1CFB095E603BBAF8ABBDAE52E3B74832E1389F552005AE657B2E87282574451A'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
