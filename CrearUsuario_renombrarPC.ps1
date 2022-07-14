#Script que crea un usuario y renombra la maquina 
#Se tiene que permitir la ejecucion de Scripts
#Set-ExecutionPolicy Unrestricted

$env:USERNAME
$env:COMPUTERNAME
$GRUPO_TRABAJO = "DOMAIN_LABOTEC"
$DESCRIPCION = ""
$NOMBRE_USUARIO = ""

$NOMBRE_COMPLETO = Read-Host -Prompt "Nombre Completo Usuario (Miguel Alejandro Rojas Hdez)"
$NOMBRE_USUARIO = Read-Host -Prompt "Iniciales Usuario (MARH)"
$CONTRASENIA = Read-Host -Prompt "Escriba la contrasenia que usara"

$NOMBRE_MAQUINA = Read-Host -Prompt "Nuevo nombre maquina (ej LV0001)"
$DESCRIPCION = $NOMBRE_MAQUINA

#New-LocalUser -Name $NOMBRE_USUARIO -Fullname $NOMBRE_COMPLETO -Confirm#

NET USER $NOMBRE_USUARIO /ADD /FULLNAME:$NOMBRE_COMPLETO
Rename-Computer -NewName $NOMBRE_MAQUINA -ComputerName $env:COMPUTERNAME
Add-Computer -WorkgroupName $GRUPO_TRABAJO
$var=Get-WmiObject -Class Win32_OperatingSystem
$var.Description = $DESCRIPCION
$var.put()

Set-ExecutionPolicy Restricted #Opcional
pause