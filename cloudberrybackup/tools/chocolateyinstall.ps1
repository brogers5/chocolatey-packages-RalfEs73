$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.msp360.com/CloudBerryBackup_v7.5.1.7DESKTOP.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'cloudberrybackup*'

  checksum      = '6D06B261AB035B6CE2A92CEE755F24CD586BB1978AD2DAC932D3FFBE4F027AEC'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
