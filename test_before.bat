@echo off
echo Check if the environment has all required dependencies necessary to install the application
WHERE git
IF %ERRORLEVEL% NEQ 0 (
    echo GIT is NOT installed!
)
