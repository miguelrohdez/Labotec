REM Activa la politica para permitir Scripts en PowerShell
REM Y ejecuta el scrip para renombrar el PC
REM miguerohdez
PowerShell "Set-ExecutionPolicy Unrestricted"
cd %~d0%~p0
powershell.exe -File CrearUsuario_renombrarPC.ps1
shutdown -r -t 15