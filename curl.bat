@echo off
set url=%~1
set FILENAME=%~2
echo I will download FILE %FILENAME% from %url% ...
if NOT EXIST %FILENAME% (
    powershell -Command "(new-object net.webclient).DownloadFile('%url%','%FILENAME%')"
    ::powershell -Command "(new-object net.webclient).DownloadString('%url%')"
    echo file: %FILENAME% is downloaded from URL: %url%
) else (
echo The File %FILENAME% exist, and downloading is stopped!  )
