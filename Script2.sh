#!/bin/bash

# Para crear un archivo

echo "Save information script" > Atomatización.txt

# Ejecución de comando para revisar que servicios estan activos

command_to_run="service --status-all"
$command_to_run

# Verificar configuración ip del host

ip_address=$(ipconfig | grep "IPv4 Address" | awk '{ print $2 }' | head -n 1)
echo "La dirección IP de Windows es: $ip_address"
