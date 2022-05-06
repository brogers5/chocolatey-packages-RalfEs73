$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.5.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.5.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '3BAC982F6FC5CCB96879A2F2FECC4C94D85DDEA53F97078DCB112635AD44534E'
  checksumType  = 'sha256'
  checksum64    = 'CB34BBBAFA2A0FC8FAEBE545D4FEBB2F4F6F3E3F94EA1AB3C707CC69D957170A'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
