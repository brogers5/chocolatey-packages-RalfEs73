$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.2.6.1_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.2.6.1_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '81AA4478AAA7BE947B9928437C3CB5641210DF407ECBA61DB7B84F8419BFD1EB'
  checksumType  = 'sha256'
  checksum64    = 'B5E915C734F1B516E7AE1D295009A8CABFE7A57EE53D66ED8E8D3F2C637507A7'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
