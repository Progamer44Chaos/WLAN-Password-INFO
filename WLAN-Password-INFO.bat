@echo off
chcp 65001 >nul
title WLAN-Password-INFO


echo [34m
echo Verfügbare WLAN-Profile:
netsh wlan show profiles
echo [0m
echo.
timeout /t 1 >nul

set /p netzwerkname="Bitte gib den Namen des Netzwerks (SSID) ein: "
if "%netzwerkname%"=="" (
    echo [31m
    echo Kein Netzwerkname eingegeben. Das Programm wird beendet.
    echo [0m
    timeout /t 3 >nul
    exit /b
)

echo [33m
echo Schlüsselinhalt = Password
echo [0m
echo [32m
echo Informationen für das Netzwerk "%netzwerkname%":
netsh wlan show profiles name="%netzwerkname%" key=clear
echo [0m

if errorlevel 1 (
    echo [31m
    echo Keine Daten gefunden – Netzwerkprofil fehlt möglicherweise.
    echo [0m
) else (
    echo [33m
    echo Kein "Schlüsselinhalt" erkannt. Möglicherweise fehlt das Passwort.
    echo [0m
)

pause