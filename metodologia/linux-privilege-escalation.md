````md
# 🐧 Linux Privilege Escalation

# Metodología

1. Enumerar el sistema.
2. Identificar usuarios y grupos.
3. Revisar permisos.
4. Buscar binarios SUID/SGID.
5. Revisar tareas programadas.
6. Buscar credenciales.
7. Enumerar servicios.
8. Revisar capacidades (Capabilities).
9. Analizar versiones del sistema.
10. Documentar todos los hallazgos.

---

# Información del sistema

## Kernel

```bash
uname -a
```

```bash
cat /etc/os-release
```

---

## Usuario actual

```bash
whoami
```

```bash
id
```

```bash
groups
```

---

## Usuarios

```bash
cat /etc/passwd
```

---

## Variables de entorno

```bash
env
```

---

# Enumeración

## Procesos

```bash
ps aux
```

---

## Servicios

```bash
systemctl list-units --type=service
```

---

## Puertos abiertos

```bash
ss -tuln
```

```bash
netstat -tuln
```

---

## Cron Jobs

```bash
crontab -l
```

```bash
ls -la /etc/cron*
```

---

# Permisos

## SUID

```bash
find / -perm -4000 -type f 2>/dev/null
```

---

## SGID

```bash
find / -perm -2000 -type f 2>/dev/null
```

---

## Writable Files

```bash
find / -writable -type f 2>/dev/null
```

---

## Writable Directories

```bash
find / -writable -type d 2>/dev/null
```

---

# Capabilities

```bash
getcap -r / 2>/dev/null
```

---

# Credenciales

## Historial

```bash
history
```

---

## Claves SSH

```bash
ls -la ~/.ssh
```

---

## Archivos interesantes

- config.php
- .env
- settings.py
- wp-config.php
- backup.zip
- backup.tar.gz

---

# Variables de entorno

```bash
printenv
```

---

# Montajes

```bash
mount
```

---

# Discos

```bash
df -h
```

---

# Red

## Interfaces

```bash
ip a
```

---

## Rutas

```bash
ip route
```

---

## Conexiones

```bash
ss -tunp
```

---

# Herramientas

## LinPEAS

- Enumeración automática de Linux.

## pspy

- Monitorización de procesos sin privilegios.

## GTFOBins

- Referencia de binarios con funcionalidades útiles relacionadas con privilegios.

---

# Binarios importantes

- bash
- sh
- vim
- nano
- less
- find
- tar
- cp
- mv
- python
- perl
- awk
- sed
- env

---

# Recursos

- GTFOBins
- LinPEAS
- pspy
- Hack The Box Academy
- TryHackMe
- PayloadsAllTheThings

---

# Notas

Añadir observaciones, técnicas aprendidas y referencias útiles encontradas durante laboratorios y máquinas.
````
