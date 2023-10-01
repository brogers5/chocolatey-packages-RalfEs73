$ErrorActionPreference = 'Stop'
$packageName = 'backup-start-menu-layout'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$Shortcut      = 'Backup Start Menu Layout.lnk'
$ProgramEXE    = 'BackupSML_x64.exe'
$ChecksumType  = 'sha256'
$Checksum      = 'CF79FE0E05003687427845B502E29B80E57FB2FD0AF350D90D047F5432B51997'

$packageArgs = @{
    PackageName    = $packageName
    FileFullPath   = "$toolsPath\BackupSML.zip"
    Destination    = $toolsDir
}

Get-ChocolateyWebFile -PackageName 'backup-start-menu-layout' -ChecksumType "$ChecksumType" -Checksum "$Checksum" -FileFullPath "$toolsPath\BackupSML.zip" -Url 'https://www.sordum.org/files/download/backup-start-menu-layout/BackupSML.zip'
Get-ChocolateyUnzip @packageArgs

Install-ChocolateyShortcut -shortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut" -targetPath "$toolsDir\BackupSML\$ProgramEXE"    
