@echo off
:: silent install nodejs on windows console
:: https://www.ibm.com/support/knowledgecenter/SSZUMP_7.2.1/install_grid_sym/install_silent.html

setlocal

set NODEJS_VERSION=v12.16.3
set NODEJS_FILENAME=node-%NODEJS_VERSION%-x64.msi
set NODEJS_URL=https://nodejs.org/dist/%NODEJS_VERSION%/%NODEJS_FILENAME%
::set NODEJS_DOWNLOAD_LOCATION=.\
set NODEJS_LOG=node-log.txt
set INSTALLDIR=C:\nodejs\

@echo on

curl.bat %NODEJS_URL% %NODEJS_FILENAME%
echo file %NODEJS_FILENAME% is downloaded!

endlocal
dir
