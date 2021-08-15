$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://cdn.movavi.com/x32/MovaviVideoEditorPlusSetupE.exe'
$url64      = 'https://cdn.movavi.com/x64/MovaviVideoEditorPlusSetupE.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  
  softwareName  = 'MovaviVideoEditorPlus*'

  checksum      = '6326E194BBB4F51353AB9CDD32C23145E6C07CA3CF98086B419638896DAF519F'
  checksumType  = 'sha256'
  checksum64    = '312B598DFAE9449BF52A4AE9F249AFC99C1EF837E57F1A3590C255B5523E7084'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}
Install-ChocolateyPackage @packageArgs
