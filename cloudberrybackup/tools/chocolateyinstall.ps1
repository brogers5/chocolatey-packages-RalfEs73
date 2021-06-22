$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.msp360.com/CloudBerryBackup_v7.1.1.211DESKTOP.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  
  softwareName  = 'cloudberrybackup*'

  checksum      = '2D635604478DE75B48FA506424A2C4494205D3BC4D287F50B93C1FC6FC107F5F'
  checksumType  = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
