$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://eposaudioprodcdn.azureedge.net/eposaudioprodcontainer/ae51e672-1743-4928-9e10-9c92383cc1ef_26353_EPOSConnect_7.1.0.24484_Original.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = 'C8ABE766EA41C5AC561AF6AC4FAF4448A165E478B54C34C100903D256432F6A2'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
