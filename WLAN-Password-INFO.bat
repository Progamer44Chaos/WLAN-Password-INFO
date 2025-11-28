@echo off
chcp 65001 >nul
title WLAN-Password-INFO

echo [34m
echo Available Wi-Fi Profiles:
netsh wlan show profiles
echo [0m
echo.
timeout /t 1 >nul

set /p networkname="Please enter the network name (SSID): "
if "%networkname%"=="" (
    echo [31m
    echo No network name entered. The program will exit.
    echo [0m
    timeout /t 3 >nul
    exit /b
)

echo [33m
echo Key Content = Password
echo [0m
echo [32m
echo Information for the network "%networkname%":
netsh wlan show profiles name="%networkname%" key=clear
echo [0m

if errorlevel 1 (
    echo [31m
    echo No data found – the network profile may be missing.
    echo [0m
) else (
    echo [33m
    echo No "Key Content" detected. The password may be missing.
    echo [0m
)

pause
