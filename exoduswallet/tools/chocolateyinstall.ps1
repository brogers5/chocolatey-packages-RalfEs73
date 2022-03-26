$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://downloads.exodus.com/releases/exodus-windows-x64-22.3.25.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'exoduswallet*'
  checksum64    = 'B2F68AEA016B2F6E3C78447B14209EDABFD6FFA8444A31F3012AA2DF725362FF'
  checksumType64= 'sha256'
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
