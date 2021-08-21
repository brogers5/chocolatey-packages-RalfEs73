$ErrorActionPreference = 'Stop'
$packageName		= 'stakecubecoinwallet-bootstrap'

$toolsPath			= Split-Path $MyInvocation.MyCommand.Definition
$toolsDir			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$toolsDestination	= Join-Path $env:appdata "StakeCubeCoin"
$checksum_file	    = '4A5DC5A65562E21A13174A1F39516E4A1817F4029B5E92CA9557A08601345110'
$checksumType_file	= 'sha256'


$packageArgs = @{
    PackageName		= $packageName
    FileFullPath	= "$toolsPath\bootstrap.zip"
    Destination		= $toolsDir
}

Get-ChocolateyWebFile -Checksum $checksum_file -ChecksumType $checksumType_file -PackageName 'stakecubecoinwallet-bootstrap' -FileFullPath "$toolsPath\bootstrap.zip" -Url 'https://github.com/stakecube/StakeCubeCoin/releases/download/v3.1.0/bootstrap.zip'

Get-ChocolateyUnzip @packageArgs

New-Item -Path "$toolsDestination" -ItemType directory -Force | Out-Null
Copy-Item "$toolsPath\.scc\*" "$toolsDestination" -recurse
Remove-Item "$toolsPath\.scc" -Recurse


