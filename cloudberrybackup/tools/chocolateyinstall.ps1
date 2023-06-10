$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.msp360.com/CloudBerryBackup_v7.8.7.59DESKTOP.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'cloudberrybackup*'

  checksum      = '3B86A865295E9E2E4DB33A25D3968DCE78BAC0F83BECA54B09763CEF551ADA82'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
