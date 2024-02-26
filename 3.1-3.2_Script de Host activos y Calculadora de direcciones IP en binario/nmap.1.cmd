@echo off
cls

REM Solicitar la dirección IP y la máscara de red al usuario
set /p ip=Introduce la dirección IP base (por ejemplo, 192.168.1.): 
set /p mascara=Introduce la máscara de red en formato de puntos (por ejemplo, 255.255.255.0): 

REM Convertir la máscara de red a notación CIDR
for /f "tokens=1-4 delims=." %%a in ("%mascara%") do set /a bits=(%%a<<24)+(%%b<<16)+(%%c<<8)+%%d
set /a contador=0
for /L %%i in (%bits%) do (
    set /a contador+=1
    if %%i equ 0 goto :done
)
:done
set red=%ip%/%contador%

REM Ejecutar el comando nmap para buscar los hosts activos en la red
nmap -sL %red%

REM Pausa para que puedas ver los resultados
pause

