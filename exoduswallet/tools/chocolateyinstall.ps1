$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://downloads.exodus.com/releases/exodus-windows-x64-22.7.29.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64
  softwareName  = 'exoduswallet*'
  checksum64    = '1E644B748A9F52BD3CC4727075C8774B74313C5BE0513C26BDC7D20CF3666C5A'
  checksumType64= 'sha256'
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
