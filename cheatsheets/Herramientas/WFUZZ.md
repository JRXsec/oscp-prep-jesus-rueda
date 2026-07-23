
**Para qué sirve**

Sirve para hacer ataques de fuerza bruta sobre servidores web y DNS, encontrando rutas, directorios y recursos ocultos. Es más completo y flexible que otras herramientas de fuzzing.


**Cuándo la uso**

En la fase de enumeración web, cuando quiero descubrir subpáginas, rutas ocultas, endpoints y posibles vectores de ataque.


**Comandos básicos**

Escaneo con fuerza bruta de servidor web y DNS (más completa):
wfuzz -c --hc=404 -z file,/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt http://192.168.1.X/FUZZ
