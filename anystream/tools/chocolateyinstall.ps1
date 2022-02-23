$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.2.1_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.2.1_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '5C06F46602222BE210A982314DE4803FC3F68B72C3F0BBC398E6275AEFB486FA'
  checksumType  = 'sha256'
  checksum64    = 'D8114A8BB0CEFCD6668E9CCB088311726C23DACF6E8F05E465CA6E955210F5C9'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
