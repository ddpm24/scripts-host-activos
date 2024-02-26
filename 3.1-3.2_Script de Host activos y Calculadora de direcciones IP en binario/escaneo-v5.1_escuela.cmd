@echo off
cls

REM Inicia el archivo HTML
(
echo ^<html^>

echo ^<head^>
echo ^<link rel="stylesheet" href="estilos.css"^>
echo ^<script src="script.js"^>^</script^>
echo ^</head^>

echo ^<body^>

echo    ^<header^>
echo         ^<a href="#"^>^<img id="logo" src="icons8-mixer-logo-100.png" alt=""^>^</a^>
echo         ^<h1^>Todo sobre Direcciones IP^</h1^>
echo     ^</header^>


echo    ^<section^>
echo ^<div^>
echo          ^<h2^>¿Qué son las Direcciones IPv4?^</h2^>
echo          ^<p^>Una dirección IP Protocolo de Internet es un identificador único asignado a cada dispositivo conectado a una red que utiliza el protocolo de Internet para la comunicación. Las direcciones IP son esenciales para que los dispositivos se comuniquen entre sí en Internet y en redes locales.^</p^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>Proceso de Obtención de Direcciones IP^</h2^>
echo     ^<p^>En una red, las direcciones IP pueden asignarse de forma estática ^(manualmente^) o de forma dinámica a través de un protocolo como DHCP. DHCP asigna direcciones IP automáticamente a los dispositivos cuando se conectan a la red, simplificando el proceso de configuración de la red.^</p^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>Seguridad y Direcciones IP^</h2^>
echo     ^<p^>Las direcciones IP pueden ser objetivos de ataques en línea. Es importante proteger las direcciones IP para evitar el acceso no autorizado a dispositivos y redes. Se pueden usar técnicas como VPNs y firewalls para proteger la privacidad y la seguridad de las direcciones IP.^</p^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>Uso de Direcciones IP en Diferentes Contextos^</h2^>
echo     ^<p^>Las direcciones IP se utilizan en una variedad de contextos, desde la conexión a Internet en casa hasta la configuración de redes empresariales y la implementación de servicios en la nube. Son fundamentales para la comunicación y la identificación de dispositivos en redes.^</p^>
echo ^</div^>



echo ^<div id="ipv6"^>
echo     ^<h1^>IPv6: La Evolución Imprescindible para el Futuro de Internet^</h1^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>¿Qué es IPv6?^</h2^>
echo     ^<p^>IPv6, o Protocolo de Internet versión 6, es la última versión ^del protocolo de Internet que se utiliza para identificar y localizar dispositivos en redes. A medida que la demanda de direcciones IP ha crecido exponencialmente, IPv6 ofrece un vasto espacio de direcciones para satisfacer esta necesidad creciente.^</p^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>Diferencias entre IPv4 e IPv6^</h2^>
echo     ^<p^>La principal diferencia entre IPv4 y IPv6 radica en el tamaño de las direcciones IP. Mientras que IPv4 utiliza direcciones de ^32 bits, lo que limita su capacidad y ha llevado al agotamiento de direcciones, IPv6 utiliza direcciones de ^128 bits, ofreciendo un vasto espacio de direcciones IP.^</p^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>Mejoras de Segurida y Funcionalidad^</h2^>
echo     ^<p^>Incorpora mejoras en seguridad, eficiencia y funcionalidad, como la autenticación y la privacidad de las direcciones, que son fundamentales para el Internet moderno y la protección de la privacidad de los usuarios.^</p^>
echo ^</div^>

echo ^<div^>
echo     ^<h2^>Implementación^</h2^>
echo     ^<p^>Aunque la adopción de IPv6 ha sido gradual, su implementación continúa creciendo a medida que se reconoce la importancia de contar con un espacio de direcciones IP suficientemente grande para soportar el crecimiento futuro de Internet y la proliferación de dispositivos conectados.^</p^>
echo ^</div^>


echo    ^<h2 id="enunciadoIP" ^>Direcciones IP Compatibles con mi Red^</h2^>
echo ^<pre id="IP" ^>

) > resultado.html

REM En este script, se utiliza un bucle FOR / F para leer el resultado 
REM del ping línea por línea y verificar si contiene la cadena "TTL". Si lo 
REM hace, entonces agrega un <br> al archivo HTML. De lo contrario, el bucle 
REM pasa a la siguiente iteración sin agregar nada.

for %%j in (128, 129, 130, 131) do (

for /L %%i in (1, 1, 254) do (

ping 192.168.%%j.%%i -n 1 | find "TTL" >> resultado.html

)

)

REM Cierra las etiquetas HTML
(
echo ^</pre^>


echo ^</section^>
echo ^</body^>
echo ^</html^>
) >> resultado.html

REM Pausa para que puedas ver el resultado
pause

REM Abre el archivo HTML en el navegador predeterminado 
start resultado.html

REM Cierra el script
exit
