$ErrorActionPreference = 'Stop'

Get-Process -Name 'Chia' -ErrorAction SilentlyContinue | Stop-Process
