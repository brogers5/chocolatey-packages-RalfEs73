$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream32.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '304092D28385D0BF521B00BB5C55D25EC1E6E4100E319C3F03CE55C530F3A36E'
  checksumType  = 'sha256'
  checksum64    = '5E12B7DF196FC55FB8812036FAE692D4B4D8B34287A86577035093BDB84B8508'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
