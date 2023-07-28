$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/PiotrMachowski/Home-Assistant-Taskbar-Menu/releases/download/v1.3.0.0/Home.Assistant.Taskbar.Menu.Installer.v1.3.0.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'home-assistant-taskbar-menu*'

  checksum      = 'FB6E6057F7476118404BA3016C8A6C1815E58C6A4C3AAC63FA813EC70FCAAAE9'
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
}

Install-ChocolateyPackage @packageArgs
