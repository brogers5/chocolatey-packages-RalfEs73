$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url        = 'https://www.redfox.bz/download/SetupAnyStream_1.6.8.0_32bit.exe'
$url64      = 'https://www.redfox.bz/download/SetupAnyStream_1.6.8.0_64bit.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  softwareName  = 'anystream*'
  checksum      = '25A5B1F4761E6DE28896D1A9ABAB397FC93EA22F9EF8510A69D2B2AD229F936C'
  checksumType  = 'sha256'
  checksum64    = 'C45A82B32FA6079E9589BB8CF62F2726FA2084CDF8B7828C9540E69FDDA659E1'
  checksumType64= 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
