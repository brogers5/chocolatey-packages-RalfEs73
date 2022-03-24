$ErrorActionPreference = 'Stop'
$packageName		= 'stakecubecoinwallet-bootstrap'

$toolsPath			= Split-Path $MyInvocation.MyCommand.Definition
$toolsDir			= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$toolsDestination	= Join-Path $env:appdata "StakeCubeCoin"

$packageArgs = @{
    PackageName		= $packageName
    FileFullPath	= "$toolsPath\bootstrap.zip"
    Destination		= $toolsDir
}

Get-ChocolateyWebFile -PackageName 'stakecubecoinwallet-bootstrap' -FileFullPath "$toolsPath\bootstrap.zip" -Url 'https://stakecubecoin.net/bootstrap.zip'

Get-ChocolateyUnzip @packageArgs

New-Item -Path "$toolsDestination" -ItemType directory -Force
Copy-Item "$toolsPath\.scc\*" "$toolsDestination" -Recurse -Force
Remove-Item "$toolsPath\.scc" -Recurse


