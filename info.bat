@echo off
if not exist *.bat (
echo This directory contains no *.bat files.
) else (
   echo List of commands:
   echo.
   dir /b *.bat
   )
:: read first line from file as a comment for command

