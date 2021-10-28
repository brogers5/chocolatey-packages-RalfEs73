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
  checksum      = 'EF13385750260AA56252C58FD82E711BD1CDAADFF485EA401AD35FA2417CE58C'
  checksumType  = 'sha256'
  checksum64    = 'D319A38C5721D09E2F55A36A3B839D0836D335B002B6A895B83ACE865EF106CA'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
