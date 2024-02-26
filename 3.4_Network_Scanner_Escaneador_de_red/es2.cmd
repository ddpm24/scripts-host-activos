@echo off
setlocal

REM Configuración de red
set DIRECCION_IP=192.168.1.16
set MASCARA_SUBRED=255.255.255.0
set PUERTA_ENLACE=192.168.1.1

REM Nombre del archivo de salida
set FECHA=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set OUTPUT_FILE=C:\Deivi_Daniel\Escuela\Sistemas\PMDeivi_Actidad_Evaluable2ev\3.4_Network_Scanner_Escaneador_de_red\resultado_scan_%FECHA%.txt
set OUTPUT_XML=C:\Deivi_Daniel\Escuela\Sistemas\PMDeivi_Actidad_Evaluable2ev\3.4_Network_Scanner_Escaneador_de_red\resultado_scan_%FECHA%.xml

REM Escaneo del router por defecto y la dirección IP del equipo local
nmap -Pn -sS -sU -p 0-65535 -O -oN "%OUTPUT_FILE%" -oX "%OUTPUT_XML%" "%PUERTA_ENLACE%"

REM Escaneo de los equipos de la red
nmap -sn "%DIRECCION_IP%/%MASCARA_SUBRED%" -oN "%OUTPUT_FILE%" -oX "%OUTPUT_XML%"

REM Escaneo de los 100 puertos más comunes en los equipos de la red que responden a ping
nmap -Pn --top-ports 100 -oN "%OUTPUT_FILE%" -oX "%OUTPUT_XML%" -iL "%OUTPUT_FILE%"

echo Escaneo completo. Resultados guardados en %OUTPUT_FILE% y %OUTPUT_XML%
