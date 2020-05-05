::@echo off
setlocal

set NODEJS_VERSION=v12.16.3
set NODEJS_FILENAME=node-%NODEJS_VERSION%-x64.msi
set NODEJS_URL=https://nodejs.org/dist/%NODEJS_VERSION%/%NODEJS_FILENAME%
::set NODEJS_DOWNLOAD_LOCATION=.\
set NODEJS_LOG=node-log.txt
set TARGETDIR=C:\Program Files\nodejs\

::curl.bat %NODEJS_URL% %NODEJS_FILENAME%
::msiexec /qn /l* %NODEJS_LOG% /i %NODEJS_FILENAME%
msiexec /i %NODEJS_FILENAME% TARGETDIR="%TARGETDIR%" ADDLOCAL="NodePerfCtrSupport,NodeEtwSupport,DocumentationShortcuts,EnvironmentPathNode,EnvironmentPathNpmModules,npm,NodeRuntime,EnvironmentPath" /qn /l* %NODEJS_LOG%
::
::  /i means normal install
::  /qn means no UI

more %NODEJS_LOG%

::, '%NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%'
::%NODEJS_FILENAME%

::powershell -NoExit -Command "(New-Object Net.WebClient).DownloadFile('%NODEJS_URL%', '%NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%'); exit;"
::msiexec /qn /l* C:\node-log.txt /i %NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%

endlocal

dir
