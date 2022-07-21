$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.0.1_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.0.1_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'E08D8BD2A03BE8DBD7615623F8483B343AE754795197CC418338E888B4A88DFF'
  checksumType  = 'sha256'
  checksum64    = 'FFD5437115E298F045D85473BF061422B81BBAC6D6516892306EB45480FE0F01'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
