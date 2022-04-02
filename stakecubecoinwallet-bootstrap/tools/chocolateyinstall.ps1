$ErrorActionPreference = 'Stop'
$packageName		= 'stakecubecoinwallet-bootstrap'

$toolsPath			= Split-Path $MyInvocation.MyCommand.Definition
$toolsDir			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$toolsDestination	= Join-Path $env:appdata "StakeCubeCoin"
$checksum_file	    = 'E3FEB4C697309CCFAF45F11F27D5449058C2D03E2E70703883078B9391A4C4D1'
$checksumType_file	= 'sha256'

$packageArgs = @{
    PackageName		= $packageName
    FileFullPath	= "$toolsPath\bootstrap.zip"
    Destination		= $toolsDir
}

Get-ChocolateyWebFile -Checksum $checksum_file -ChecksumType $checksumType_file -PackageName 'stakecubecoinwallet-bootstrap' -FileFullPath "$toolsPath\bootstrap.zip" -Url 'https://stakecubecoin.net/bootstrap.zip'

Get-ChocolateyUnzip @packageArgs

New-Item -Path "$toolsDestination" -ItemType directory -Force
Copy-Item "$toolsPath\.scc\*" "$toolsDestination" -Recurse -Force
Remove-Item "$toolsPath\.scc" -Recurse


