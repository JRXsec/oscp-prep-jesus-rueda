# Linux Privilege Escalation

# Metodología

1. Enumerar el sistema.
**Recolectar información del entorno para detectar vectores de escalada.**

2. Identificar usuarios y grupos.
**Saber quién eres y qué permisos tienes.**

3. Revisar permisos.
**Detectar configuraciones débiles o accesos indebidos.**

4. Buscar binarios SUID/SGID.
**Binarios que ejecutan con privilegios elevados.**

5. Revisar tareas programadas.
**Cronjobs vulnerables que permiten ejecución de comandos.**

6. Buscar credenciales.
**Contraseñas en texto plano, claves SSH, archivos sensibles.**

7. Enumerar servicios.
**Procesos y servicios que pueden ser explotables.**

8. Revisar capacidades (Capabilities).
**Binarios con permisos especiales que permiten escalada.**

9. Analizar versiones del sistema.
**Kernel vulnerable, software desactualizado.**

10. Documentar hallazgos.
**Registrar cada paso para reproducibilidad y reporte.**

---

# Información del sistema

## Kernel

uname -a  
**Versión del kernel.**

cat /etc/os-release  
**Distribución y versión.**

---

## Usuario actual

whoami  
**Usuario actual.**

id  
**UID, GID y grupos.**

groups  
**Grupos adicionales.**

---

## Usuarios

cat /etc/passwd  
**Lista de usuarios del sistema.**

---

## Variables de entorno

env  
**Variables que pueden contener credenciales.**

---

# Enumeración

## Procesos

ps aux  
**Procesos en ejecución.**

---

## Servicios

systemctl list-units --type=service  
**Servicios activos.**

---

## Puertos internos

ss -tuln  
**Puertos internos accesibles.**

---

## Cron Jobs

crontab -l  
**Tareas del usuario actual.**

ls -la /etc/cron*  
**Tareas globales.**

---

# Permisos

## SUID

find / -perm -4000 -type f 2>/dev/null  
**Binarios que ejecutan como root.**

---

## SGID

find / -perm -2000 -type f 2>/dev/null  
**Binarios que ejecutan con permisos de grupo elevados.**

---

## Writable Files

find / -writable -type f 2>/dev/null  
**Archivos editables.**

---

## Writable Directories

find / -writable -type d 2>/dev/null  
**Directorios editables.**

---

# Capabilities

getcap -r / 2>/dev/null  
**Binarios con capacidades especiales.**

---

# Credenciales

## Historial

history  
**Comandos que pueden contener contraseñas.**

---

## Claves SSH

ls -la ~/.ssh  
**Claves privadas y autorizadas.**

ssh2john id_rsa > hash.txt  
**Extrae hash de clave SSH.**

john hash.txt --wordlist=/usr/share/wordlists/rockyou.txt  
**Fuerza bruta sobre passphrase.**

---

## Archivos interesantes

config.php  
**Credenciales de DB.**

.env  
**Variables sensibles.**

settings.py  
**Configuraciones de apps.**

wp-config.php  
**Credenciales de WordPress.**

backup.zip  
**Datos sensibles comprimidos.**

backup.tar.gz  
**Credenciales antiguas.**

---

# Montajes

mount  
**Puntos de montaje vulnerables.**

---

# Discos

df -h  
**Espacio y particiones.**

---

# Red

## Interfaces

ip a  
**Interfaces activas.**

---

## Rutas

ip route  
**Rutas configuradas.**

---

## Conexiones

ss -tunp  
**Conexiones activas.**

---

# Herramientas que usas

./linpeas.sh  
**Enumeración automática.**

./pspy64  
**Monitorización de procesos.**

gtfobins  
**Técnicas de escalada por binarios.**

---

# Servicios que usas

## SMB

enum4linux -a IP  
**Enumeración completa SMB.**

smbclient -L //IP/  
**Listar shares.**

---

## Redis

redis-cli  
**Acceso a Redis.**

redis-cli info  
**Información del servidor.**

---

## MySQL

mysql -u root -p  
**Acceso a MySQL.**

---

## SSH

ssh user@IP  
**Acceso remoto.**

hydra -l user -P /usr/share/wordlists/rockyou.txt ssh://IP  
**Fuerza bruta SSH.**

---

## Netcat

nc -lvnp 4444  
**Escuchar shell reversa.**

nc IP 4444  
**Conectar a shell.**

---

# Binarios importantes

bash  
sh  
find  
tar  
python  
perl  
awk  
sed  
env  
**Binarios útiles para escalada.**

---

# Recursos

GTFOBins  
LinPEAS  
pspy  
PayloadsAllTheThings  
Hack The Box Academy  
TryHackMe  
**Recursos útiles para PrivEsc.**

---

