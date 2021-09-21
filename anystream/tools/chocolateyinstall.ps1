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
  checksum      = '98FACCC96594F755CACC9BA9B543918309EDC59C5DBCC1DAFC239A725F90A33B'
  checksumType  = 'sha256'
  checksum64    = 'AD77C84DC0D112EFD0AAE5A7F4BBA38658110FF0843C07843D828F6966FAF0B6'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
