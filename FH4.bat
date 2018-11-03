@echo off

START explorer.exe shell:appsFolder\Microsoft.SunriseBaseGame_8wekyb3d8bbwe!SunriseReleaseFinal

TIMEOUT /T 70 /NOBREAK
taskkill /f /im explorer.exe



:LOOP
TASKLIST | FIND /I "FORZAHORIZON4" >nul 2>&1
IF ERRORLEVEL 1 (
GOTO CONTINUE
) ELSE (
ECHO fh4 is still running
TIMEOUT /T 5
GOTO LOOP
)

:CONTINUE

START explorer.exe
EXIT