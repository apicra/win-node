@ECHO OFF
echo I will remove the NODE application

NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
	echo This setup needs admin permissions. Please run this file as admin.
	pause
	exit
)

set NODEJS_VERSION=v12.16.3
set NODEJS_FILENAME=node-%NODEJS_VERSION%-x64.msi
set NODEJS_URL=https://nodejs.org/dist/%NODEJS_VERSION%/%NODEJS_FILENAME%
::set NODEJS_DOWNLOAD_LOCATION=.\
set NODEJS_LOG=node-log.txt
set TARGETDIR=C:\nodejs\

msiexec.exe /x %NODEJS_FILENAME%  /qn /l*v %NODEJS_LOG%
