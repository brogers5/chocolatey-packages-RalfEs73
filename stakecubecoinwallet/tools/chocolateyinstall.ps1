$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/stakecube/StakeCubeCoin/releases/download/v3.2.0/scc-3.2.0-win64-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'stakecubecoinwallet*'
  checksum64    = '1C803B3BF513364C5E1BB3CF11F01403877BE1FB49D92F5D3A69B6EC8D52E295'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs

