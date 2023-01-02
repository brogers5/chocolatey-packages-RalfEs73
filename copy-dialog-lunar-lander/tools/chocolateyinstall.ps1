$ErrorActionPreference = 'Stop'
$packageName = 'copy-dialog-lunar-lander'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$toolsDir    		= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$Shortcut    		= 'Copy Dialog Lunar Lander.lnk'
$ProgramEXE  		= 'CopyDialogLunarLander.exe'
$checksum_file	    = 'D96E557FEDAA037EDF2BC57719E55A0C84EC4E3839AA91723C733D5AA536AFF1'
$checksumType_file	= 'sha256'

$packageArgs = @{
    PackageName    = $packageName
    FileFullPath   = "$toolsPath\copy-dialog-lunar-lander-v1.1.zip"
    Destination    = $toolsDir
}

Get-ChocolateyWebFile -Checksum $checksum_file -ChecksumType $checksumType_file -PackageName 'copy-dialog-lunar-lander' -FileFullPath "$toolsPath\copy-dialog-lunar-lander-v1.0.zip" -Url 'https://github.com/Sanakan8472/copy-dialog-lunar-lander/releases/download/v1.1/copy-dialog-lunar-lander-v1.1.zip'
Get-ChocolateyUnzip @packageArgs

Install-ChocolateyShortcut -shortcutFilePath "$env:Public\Desktop\$Shortcut" -targetPath "$toolsDir\copy-dialog-lunar-lander\$ProgramEXE" -WorkingDirectory "$toolsDir"
Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut" -targetPath "$toolsDir\copy-dialog-lunar-lander\$ProgramEXE"    
