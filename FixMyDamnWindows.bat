@echo off
:: Check for Administrator Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script must be run as Administrator.
    pause
    exit /b
)

:: Display welcome message
echo Hello! Welcome to the fixing your DAMN Windows portal.
echo We will now run some basic repair tools to fix your system.
echo Press any key to continue...
pause >nul

:: Run CHKDSK (on next reboot)
echo Scheduling disk check on next reboot...
echo y | chkdsk C: /f

:: Run System File Checker
echo Running System File Checker...
sfc /scannow

:: Run DISM health checks
echo Running DISM /CheckHealth...
dism.exe /online /cleanup-image /checkhealth

echo Running DISM /ScanHealth...
dism.exe /online /cleanup-image /scanhealth

echo Running DISM /RestoreHealth...
dism.exe /online /cleanup-image /restorehealth

echo Running DISM /StartComponentCleanup...
dism.exe /online /cleanup-image /startcomponentcleanup

:: Done!
echo.
echo Repairs completed. Please restart your computer to finalize the process.
echo DO NOT interrupt the disk scan after reboot.
pause
exit
