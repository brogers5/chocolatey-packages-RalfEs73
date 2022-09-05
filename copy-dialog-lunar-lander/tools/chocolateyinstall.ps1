$ErrorActionPreference = 'Stop'
$packageName = 'copy-dialog-lunar-lander'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$Shortcut    = 'Copy Dialog Lunar Lander.lnk'
$ProgramEXE  = 'CopyDialogLunarLander.exe'

$packageArgs = @{
    PackageName    = $packageName
    FileFullPath   = "$toolsPath\copy-dialog-lunar-lander-v1.0.zip"
    Destination    = $toolsDir
}

Get-ChocolateyWebFile -PackageName 'copy-dialog-lunar-lander' -FileFullPath "$toolsPath\copy-dialog-lunar-lander-v1.0.zip" -Url 'https://github.com/Sanakan8472/copy-dialog-lunar-lander/releases/download/v1.0/copy-dialog-lunar-lander-v1.0.zip'
Get-ChocolateyUnzip @packageArgs

Install-ChocolateyShortcut -shortcutFilePath "$env:Public\Desktop\$Shortcut" -targetPath "$toolsDir\copy-dialog-lunar-lander\$ProgramEXE" -WorkingDirectory "$toolsDir"
Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut" -targetPath "$toolsDir\copy-dialog-lunar-lander\$ProgramEXE"    
