$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.2.8.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.2.8.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '71AACD3C87C85A04D3059299F39DDD67C907D57FC9401558D98BD2EA75DD31D2'
  checksumType  = 'sha256'
  checksum64    = 'B6F1EAF85CD99D848D148E462D6AA41EB6165AC93245DBA71F4B6C9C3BACA865'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
