$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/stakecube/StakeCubeCoin/releases/download/v3.3.0/scc-3.3.0-win64-setup-unsigned.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'stakecubecoinwallet*'
  checksum64    = 'E65CC3BD81A7E496078A96B6BDDAD9E0BAB9D9B9E0BA0AB878E18129AC522903'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

