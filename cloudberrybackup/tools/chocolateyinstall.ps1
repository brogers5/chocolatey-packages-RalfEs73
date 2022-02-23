$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.msp360.com/CloudBerryBackup_v7.4.0.160DESKTOP.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'cloudberrybackup*'

  checksum      = '99F0C63E8800398B3774DE1CF5ED98B951459244369C550928327841B6B00161'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
