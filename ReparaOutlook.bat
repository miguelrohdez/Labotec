REM Reiniciar Outlook
REM miguerohdez

@echo off
TASKKILL /F /IM OUTLOOK.exe
timeout /T 3 /NOBREAK
START OUTLOOK.exe
timeout /T 3 /NOBREAK