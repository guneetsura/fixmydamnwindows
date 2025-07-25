@echo off
title Network Repair Utility - Admin Required

:: Check for Administrator Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ==================================================
    echo This script MUST be run as Administrator.
    echo Right-click the file and choose 'Run as Administrator'.
    echo ==================================================
    pause
    exit /b
)

:: Display welcome message
echo ==================================================
echo Hello! Welcome to the Network Repair Utility.
echo We are about to reset and refresh your network settings.
echo ==================================================
echo Press any key to begin...
pause >nul

:: Reset Winsock
echo.
echo Resetting Winsock...
netsh winsock reset

:: Reset TCP/IP stack
echo.
echo Resetting TCP/IP Stack...
netsh int ip reset

:: Release current IP
echo.
echo Releasing current IP address...
ipconfig /release

:: Renew IP
echo.
echo Renewing IP address...
ipconfig /renew

:: Flush DNS Resolver Cache
echo.
echo Flushing DNS Resolver Cache...
ipconfig /flushdns

:: Done
echo.
echo ==================================================
echo Network repairs complete.
echo You may need to restart your computer for changes to take effect.
echo ==================================================
pause
exit
