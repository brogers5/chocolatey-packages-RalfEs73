$ErrorActionPreference = 'Stop'
$packageName		= 'defiwallet-bootstrap'

$toolsPath			= Split-Path $MyInvocation.MyCommand.Definition
$toolsDir			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$toolsDestination	= Join-Path $env:appdata "DeFi Blockchain"
$checksum_file	    = '6FA316F141F4BC2598387600AAB824E0AAAC560879E554E24DECD8A8F6269FC3'
$checksumType_file	= 'sha256'


$packageArgs = @{
    PackageName		= $packageName
    FileFullPath	= "$toolsPath\snapshot-mainnet-1118129.zip"
    Destination		= $toolsDir
}

Get-ChocolateyWebFile -Checksum $checksum_file -ChecksumType $checksumType_file -PackageName 'defiwallet-bootstrap' -FileFullPath "$toolsPath\snapshot-mainnet-1118129.zip" -Url 'https://defi-snapshots-europe.s3.eu-central-1.amazonaws.com/snapshot-mainnet-1118129.zip'

Get-ChocolateyUnzip @packageArgs

New-Item -Path "$toolsDestination" -ItemType directory -Force | Out-Null
Copy-Item "$toolsPath\*" "$toolsDestination" -recurse
Remove-Item "$toolsPath\" -Recurse


