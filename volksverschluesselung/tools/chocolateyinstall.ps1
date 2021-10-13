$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl1.volksverschluesselung.de/VV-Private-Client-Windows-Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'volksverschluesselung*'

  checksum      = '8B4CBCC1C32CC23360B598E267FED21BE393C9A933130364BC9A364AF69F8B38'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
