$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.3.4.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.3.4.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '18AD46CA9E5C560DDC219DAD5AB1D6310A78EF0AF0ABA9C55EF0F770CE3E48B2'
  checksumType  = 'sha256'
  checksum64    = 'E1C5763C5A31069BBFA418E23FAB68243E956B9A44BBDD8F017860E40D9986EA'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
