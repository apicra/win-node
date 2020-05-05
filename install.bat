@echo off
:: silent install nodejs on windows console
:: https://www.ibm.com/support/knowledgecenter/SSZUMP_7.2.1/install_grid_sym/install_silent.html

NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
	echo This setup needs admin permissions. Please run this file as admin.
	pause
	exit
)

setlocal

set NODEJS_VERSION=v12.16.3
set NODEJS_FILENAME=node-%NODEJS_VERSION%-x64.msi
set NODEJS_URL=https://nodejs.org/dist/%NODEJS_VERSION%/%NODEJS_FILENAME%
::set NODEJS_DOWNLOAD_LOCATION=.\
set NODEJS_LOG=node-log.txt
set INSTALLDIR=C:\nodejs\

curl.bat %NODEJS_URL% %NODEJS_FILENAME% & msiexec.exe /i %NODEJS_FILENAME% INSTALLDIR=%INSTALLDIR% /qn /L*v %NODEJS_LOG%
::msiexec.exe /i %NODEJS_FILENAME% INSTALLDIR="%INSTALLDIR%" /quiet
::msiexec /i %NODEJS_FILENAME% /qn
::msiexec /qn /l* %NODEJS_LOG% /i %NODEJS_FILENAME%
::msiexec /i %NODEJS_FILENAME% TARGETDIR="%TARGETDIR%" ADDLOCAL="NodePerfCtrSupport,NodeEtwSupport,DocumentationShortcuts,EnvironmentPathNode,EnvironmentPathNpmModules,npm,NodeRuntime,EnvironmentPath" /qn /l* %NODEJS_LOG%
::
::  /i means normal install
::  /qn means no UI

more %NODEJS_LOG%

::, '%NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%'
::%NODEJS_FILENAME%

::powershell -NoExit -Command "(New-Object Net.WebClient).DownloadFile('%NODEJS_URL%', '%NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%'); exit;"
::msiexec /qn /l* C:\node-log.txt /i %NODEJS_DOWNLOAD_LOCATION%%NODEJS_FILENAME%

endlocal
echo program: %NODEJS_FILENAME% is installed!
dir
