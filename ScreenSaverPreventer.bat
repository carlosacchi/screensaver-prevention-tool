@echo off
setlocal enabledelayedexpansion

:menu
cls
echo ====================================
echo      Screensaver Preventer v2.1
echo ====================================
echo.
echo 1. Start activity simulator (Invisible keypress F15) [RECOMMENDED]
echo 2. Exit
echo.
set /p choice="Enter your choice (1-2, default is 1): "

if "%choice%"=="" set choice=1
if "%choice%"=="1" goto configure_keypress
if "%choice%"=="2" goto exit
goto menu

:configure_keypress
set method=keypress
echo.
echo Selected: Invisible keypress (F15)
goto configure

:configure
echo.
:ask_interval
set /p interval="Enter interval in seconds (30-90, default is 60): "

if "%interval%"=="" set interval=60
if !interval! lss 30 (
    echo Minimum interval is 30 seconds!
    pause
    goto ask_interval
)
if !interval! gtr 90 (
    echo Maximum interval is 90 seconds!
    pause
    goto ask_interval
)

goto start

:start
cls
echo Screensaver Preventer - ACTIVE
echo Method: Invisible keypress ^(F15^)
echo Interval: !interval! seconds
echo.
echo Press Ctrl+C to return to menu.
echo.
echo Last activity: Starting...

:loop
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{F15}')" >nul 2>&1

timeout /t !interval! /nobreak >nul

:: Get current time
for /f "tokens=1-4 delims=:.," %%a in ("%time%") do (
    set hour=%%a
    set minute=%%b
    set second=%%c
)
set hour=!hour: =!

:: Clear screen and redraw status
cls
echo Screensaver Preventer - ACTIVE
echo Method: Invisible keypress ^(F15^)
echo Interval: !interval! seconds
echo.
echo Press Ctrl+C to return to menu.
echo.
echo Last activity: %date% !hour!:!minute!:!second! ^(keypress - !interval!s interval^)

goto loop

:stop
echo.
echo Activity simulator stopped.
pause
goto menu

:exit
echo.
echo Goodbye!
timeout /t 2 /nobreak >nul
exit
