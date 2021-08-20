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
  checksum      = '8772BE30EB2DE6ED147E8EF1A121424C4FE9A8C7786EFF43E1B34F4341B78CAC'
  checksumType  = 'sha256'
  checksum64    = '258059B7E037B1943279A3E779B4C206C9453E8DB4B7DE952D51769BBA8430F5'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
