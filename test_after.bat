@ECHO OFF
echo Check if the application works correctly
node --version
IF %ERRORLEVEL% EQU 0 (
    echo "YES"
)
::echo %ERRORLEVEL%
