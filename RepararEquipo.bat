REM Scrip para reparar el equipo, guadar el log y apagar el equipo
sfc /scannow >> C:\RepararLog.txt
wait
dism /Online /Cleanup-Image /RestoreHealth > C:\RepararLog.txt
shutdown -s -t 30