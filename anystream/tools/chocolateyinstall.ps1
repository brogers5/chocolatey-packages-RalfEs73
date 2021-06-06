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
  checksum      = '7A84D9ACD20924E9B33FDDA0BB99322985B7610A2220E255E89B89032E9E40D6'
  checksumType  = 'sha256'
  checksum64    = 'AF9DA250D8D8D1854A519A18E5C4BC8A4A3BB0318409541336855909AA924D56'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
