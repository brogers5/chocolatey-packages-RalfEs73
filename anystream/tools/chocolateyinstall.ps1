$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.5.9.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.5.9.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '24287A16E2D8C094E99DFDF1C1EC17A09C3AF2EA195A56FDA5BB3A413568B206'
  checksumType  = 'sha256'
  checksum64    = '5F2A0C14C0816F9EC8D085F6CC1D2426082F82C942A78C9A6BCAF98EC718ACD1'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
