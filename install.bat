@echo off
setlocal

set NODEJS_VERSION=v12.16.3
set NODEJS_FILENAME=node-%NODEJS_VERSION%-x64.msi
set NODEJS_URL=https://nodejs.org/dist/%NODEJS_VERSION%/%NODEJS_FILENAME%
set NODEJS_DOWNLOAD_LOCATION=C:\

curl %NODEJS_URL%
msiexec /qn /l* C:\node-log.txt /i %NODEJS_FILENAME%

::, '%NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%'
::%NODEJS_FILENAME%

::powershell -NoExit -Command "(New-Object Net.WebClient).DownloadFile('%NODEJS_URL%', '%NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%'); exit;"
::msiexec /qn /l* C:\node-log.txt /i %NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%

endlocal

dir
