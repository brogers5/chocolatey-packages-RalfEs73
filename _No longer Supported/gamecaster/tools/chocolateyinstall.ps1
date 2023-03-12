$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.gamecaster.com/4.0.2109.2802/Gamecaster_Installer_4.0.2109.2802.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'gamecaster*'
  checksum      = '92BA9954B87E7EE9F50E422D4FF3013C23CE68B7113C6B5095586EB6B2786ABF'
  checksumType  = 'sha256'
  silentArgs    = "/exenoupdates /qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
