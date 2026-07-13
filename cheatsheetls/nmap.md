**NMAP comandos**


Escaneo completo muy intrusivo 

```bash
nmap -p- --open -T5 -v -oG allPorts <target-ip> -n 
```

---

Escaneo rápido de los 100 puertos más comunes

```bash
sudo nmap -F -T5 <target-ip>
```

---


Escaneo para ver la versión de un servicio que corre sobre un puerto.

```bash
nmap -p 8009 -sV --version-intensity 9 <target-ip>
```

---

Comando para ver los requisitos de autenticación de un servicio AJP (Apache)

```bash
nmap -p 8009 --script ajp-auth <target-ip>
```

---

**Parámetros**

- `-p-` → Escanea los 65535 puertos TCP.
- `--open` → Muestra únicamente los puertos abiertos.
- `-T5` → Aumenta la velocidad del escaneo (puede producir falsos negativos).
- `-v` → Modo verbose.
- `-oG allPorts` → Guarda la salida en formato greppable.
- `-n` → No resuelve nombres DNS.

---
