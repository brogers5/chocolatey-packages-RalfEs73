$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.4.2.1_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.4.2.1_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = 'A557BA042CAC37E2BBC7398BE01388820E94D8C76EE17051C379196A3ED3E3FD'
  checksumType  = 'sha256'
  checksum64    = 'BC649E0347074566DA9EE69154F2B35DB01F21A34FBC1A01D181580C773DEBE0'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
