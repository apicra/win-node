@echo off
::echo You are about to use windows cURL, Enter your url after curl command below:
::set /p input="curl "
::cls
echo I will download NODE installator for Windows system, if is now existing i will stop this script

set url=%~1
set filename=%~2
echo %url%
powershell -Command "(new-object net.webclient).DownloadFile('%url%','%filename%')"
::powershell -Command "(new-object net.webclient).DownloadString('%url%')"
echo file: %filename% is downloaded from URL: %url%
