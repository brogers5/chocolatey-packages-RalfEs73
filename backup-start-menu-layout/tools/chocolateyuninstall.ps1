$ErrorActionPreference = 'Stop';
$packageName = 'backupstartmenulayout' 
$Shortcut    = 'Backup Start Menu Layout.lnk'

Remove-Item -Path "$env:Public\Desktop\$Shortcut"
Remove-Item "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut"
