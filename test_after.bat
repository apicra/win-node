@echo off
echo Check if the application works correctly
WHERE node
IF %ERRORLEVEL% NEQ 0 (
    echo NODE JS is NOT installed!
)
