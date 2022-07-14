#Script que cambia el nombre 
#Se tiene que permitir la ejecucion de Scripts
#Set-ExecutionPolicy Unrestricted

$env:USERNAME
$env:COMPUTERNAME
$GRUPO_TRABAJO = "DOMAIN_LABOTEC"
$DESCRIPCION = ""
$NOMBRE_USUARIO = ""

$NOMBRE_COMPLETO = Read-Host -Prompt "Nombre Completo Usuario (Miguel Alejandro Rojas Hdez)"
$NOMBRE_USUARIO = Read-Host -Prompt "Iniciales Usuario (MARH)"
$NOMBRE_MAQUINA = Read-Host -Prompt "Nuevo nombre maquina (ej LV0001)"
$DESCRIPCION = $NOMBRE_MAQUINA

net user $env:USERNAME /fullname:$NOMBRE_COMPLETO /comment:$DESCRIPCION
Rename-LocalUser -Name $env:USERNAME -NewName $NOMBRE_USUARIO
Rename-Computer -NewName $NUEVONOMBRE -ComputerName $env:COMPUTERNAME
Add-Computer -WorkgroupName $GRUPO_TRABAJO
$var=Get-WmiObject -Class Win32_OperatingSystem
$var.Description = $DESCRIPCION
$var.put()

pause