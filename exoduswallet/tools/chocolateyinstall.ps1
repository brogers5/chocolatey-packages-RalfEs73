$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://downloads.exodus.com/releases/exodus-windows-x64-23.5.22.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'exoduswallet*'
  checksum64    = '00a393deeb11b5fbac3a8ead0972559692f8b4365bd0851d4c427c08762f59ff'
  checksumType64= 'sha256'
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
