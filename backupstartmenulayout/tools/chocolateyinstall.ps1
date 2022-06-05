$ErrorActionPreference = 'Stop'
$packageName = 'backupstartmenulayout'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$Shortcut    = 'Backup Start Menu Layout.lnk'
$ProgramEXE  = 'BackupSML_x64.exe'

$packageArgs = @{
    PackageName    = $packageName
    FileFullPath   = "$toolsPath\BackupSML.zip"
    Destination    = $toolsDir
}

Get-ChocolateyWebFile -PackageName 'backupstartmenulayout' -FileFullPath "$toolsPath\BackupSML.zip" -Url 'https://www.sordum.org/files/download/backup-start-menu-layout/BackupSML.zip'
Get-ChocolateyUnzip @packageArgs

Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut" -targetPath "$toolsDir\BackupSML\$ProgramEXE"    
