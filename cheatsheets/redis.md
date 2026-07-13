REDIS

redis-cli -h IP -Conexión por cualquier puerto

redis-cli -h IP -p 6380  -Conexión por puerto manual

COMANDOS

KEYS * -Lista claves

KEYS user:* -Lista claves de usuario

TYPE clave -Ver el tipo de una clave

SELECT 1 -Selecciona la BBDD 1

DESCARGAR CLAVES

GET nombre_clave          # Si es una cadena (string)

HGETALL nombre_clave      # Si es un hash

LRANGE nombre_clave 0 -1  # Si es una lista

SMEMBERS nombre_clave     # Si es un conjunto (set)

ZRANGE nombre_clave 0 -1  # Si es un sorted set
