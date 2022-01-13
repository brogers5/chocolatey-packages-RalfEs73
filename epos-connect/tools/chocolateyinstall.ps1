$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://eposaudioprodcdn.azureedge.net/eposaudioprodcontainer/893af098-08f0-4fc1-b7a7-39202724086b_26134_EPOSConnect_7.1.0.24112_Original.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'epos-connect*'
  checksum      = 'B5494946B6BAA5328EB45CC2EF918C833C2D4CE045F70DBA88A8A36AFE9E38B0'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
