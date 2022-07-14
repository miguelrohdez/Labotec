REM Reinicia el adaptador de red llamado "Ethernet"
REM miguelrohdez

@echo off
netsh interface set interface Ethernet admin=disable
echo Reiniciando Internet... Espere 10s
timeout 5 > nul
echo Espere 5s
timeout 5 > nul
netsh interface set interface Ethernet admin=enable
echo Reinicio Correcto!!
timeout 2 > nul
