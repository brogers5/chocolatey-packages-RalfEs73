$ErrorActionPreference = 'Stop'
$packageName		= 'stakecubecoinwallet-bootstrap'

$toolsPath			= Split-Path $MyInvocation.MyCommand.Definition
$toolsDir			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$toolsDestination	= Join-Path $env:appdata "StakeCubeCoin"
$checksum_file	    = 'FD95A6C4A2B533A5F3B3E8A6D0E9BEC29A452470ADF811A4FAF811E8490D3CAE'
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


