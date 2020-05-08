@ECHO OFF
git --version
IF %ERRORLEVEL% NEQ 0 (
::    echo "NOT"
) else (
    echo "YES"
)
::echo %ERRORLEVEL%
