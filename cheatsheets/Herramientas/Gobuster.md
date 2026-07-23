**Para qué sirve**

Gobuster es una herramienta que sirve para hacer ataques de fuerza bruta sobre servidores web para encontrar subpáginas y directorios ocultos.


**Cuándo la uso**

En la fase de enumeración web, cuando quiero descubrir rutas, directorios y recursos que no están enlazados públicamente.


**Comandos básicos**

gobuster dir -u http://10.128.177.33/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt

Especificando el puerto:
gobuster dir -u http://10.130.143.112:3333/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
