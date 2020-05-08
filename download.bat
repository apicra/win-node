@echo off
:: silent install nodejs on windows console
:: https://www.ibm.com/support/knowledgecenter/SSZUMP_7.2.1/install_grid_sym/install_silent.html

setlocal

set VERSION=v12.16.3
set FILENAME=node-%VERSION%-x64.msi
set URL=https://nodejs.org/dist/%VERSION%/%FILENAME%
::set DOWNLOAD_LOCATION=.\
set LOG=node-log.txt
set INSTALLDIR=C:\nodejs\

@echo on

curl.bat %URL% %FILENAME%
echo file %FILENAME% is downloaded!

endlocal
dir
