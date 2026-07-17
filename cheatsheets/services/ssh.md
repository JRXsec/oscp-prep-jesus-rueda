
**Servicio**

SSH


**Puerto habitual**

22


**Qué es**

Servicio seguro para acceder remotamente a máquinas y ejecutar comandos. Se usa para administración, gestión y conexión cifrada entre equipos.


**Riesgos habituales**

- Contraseñas débiles
- Claves privadas expuestas
- Puertos no estándar mal configurados
- Acceso root permitido
- Versiones antiguas vulnerables


**Enumeración básica**

Normal SSH connection  
ssh usuario@192.168.1.50

SSH connection with a non standard port  
ssh -p port_number user@IP

SSH connection with a private key  
ssh -i clave.pem usuario@ip


ssh -V
Sirve para saber si es vulnerable a cosas como CVE-2018-15473.

Probar conexión SSH sin iniciar sesión
ssh -o BatchMode=yes usuario@IP
Útil para scripts.
