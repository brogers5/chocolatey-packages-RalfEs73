$ErrorActionPreference = 'Stop';
$packageName = 'copy-dialog-lunar-lander' 
$Shortcut    = 'Copy Dialog Lunar Lander.lnk'

Remove-Item -Path "$env:Public\Desktop\$Shortcut"
Remove-Item "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\$Shortcut"
