FROM mcr.microsoft.com/windows/servercore:ltsc2019
ADD script.ps1 /windows/temp/script.ps1

ENTRYPOINT powershell.exe -executionpolicy bypass c:\windows\temp\script.ps1
