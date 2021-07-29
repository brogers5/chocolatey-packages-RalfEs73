$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://files.movavi.com/x32/MovaviVideoConverterSetupE.exe'
$url64      = 'https://files.movavi.com/x64/MovaviVideoConverterSetupE.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'movavivideoconverter*'
  checksum      = '68FA0B91E4531D3D13B07C6B670F17E95D09DD7F92B9C84059E7370A655C523B'
  checksumType  = 'sha256'
  checksum64    = '6326E194BBB4F51353AB9CDD32C23145E6C07CA3CF98086B419638896DAF519F'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
