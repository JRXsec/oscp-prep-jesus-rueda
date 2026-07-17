**Servicio**

Redis


**Puerto habitual**

6379 normalmente, pero puede estar en cualquier puerto.


**Qué es**

Base de datos en memoria que almacena claves y valores. Permite guardar cadenas, listas, hashes, sets y otros tipos de datos. Muy rápida y usada para caché, sesiones y colas.


**Riesgos habituales**

- Acceso sin contraseña
- Servicio expuesto a Internet
- Permisos demasiado abiertos
- Posibilidad de leer claves sensibles
- Posibilidad de escribir archivos en el sistema si está mal configurado


**Enumeración básica**

redis-cli -h IP  → Conexión por cualquier puerto

redis-cli -h IP -p 6380  → Conexión por puerto manual


**Comandos**

KEYS *  → Lista todas las claves

KEYS user:*  → Lista claves de usuario

TYPE clave  → Ver el tipo de una clave

SELECT 1  → Selecciona la BBDD 1


**Descargar claves**

GET nombre_clave          → Si es una cadena (string)

HGETALL nombre_clave      → Si es un hash

LRANGE nombre_clave 0 -1  → Si es una lista

SMEMBERS nombre_clave     → Si es un conjunto (set)

ZRANGE nombre_clave 0 -1  → Si es un sorted set


