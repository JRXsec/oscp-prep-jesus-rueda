
**Para qué sirve**

Hacer fuerza bruta contra servicios como SSH, FTP, HTTP, SMB, etc. Permite probar usuarios y contraseñas usando diccionarios o listas personalizadas.



**Cuándo la uso**

Durante la fase de explotación cuando tengo un usuario válido y quiero descubrir su contraseña, o cuando quiero probar credenciales débiles en un servicio expuesto.



**Comandos básicos**

hydra -l jan -P /usr/share/wordlists/rockyou.txt ssh://10.128.177.112
**Hace fuerza bruta sobre el usuario indicado usando el diccionario rockyou.txt contra el servicio SSH de la IP objetivo.**
