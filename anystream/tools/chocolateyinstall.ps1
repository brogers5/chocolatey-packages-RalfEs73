$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.5.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.4.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'FD3EBBB1E26FA28A6A3DF1C48940752046777808225BAD762C9059BEBDD45C10'
  checksumType  = 'sha256'
  checksum64    = '7F7C4DE023870CF128F7DFE3FE1600882EE3FA03AA96DC2141B639D2EC7004C1'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
