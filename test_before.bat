@ECHO OFF
echo Check if the environment has all required dependencies necessary to install the application
git --version
IF %ERRORLEVEL% NEQ 0 (
::    echo "NOT"
) else (
    echo "YES"
)
::echo %ERRORLEVEL%
