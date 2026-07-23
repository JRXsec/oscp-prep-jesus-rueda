# Enumeración de una máquina

## 1. Reconocimiento

Identificar IP, dominio y DNS.  
**whois dominio**  
**nslookup dominio**  
**dig dominio**  

Analizar banners y tecnologías.  
**whatweb URL**  
**wappalyzer (browser extension)**  

Descubrir subdominios.  
**gobuster dns -d dominio -w wordlist**  
**wfuzz -w wordlist -u dominio -H "Host: FUZZ.dominio"**  

Buscar archivos públicos.  
**curl URL/robots.txt**  
**curl URL/sitemap.xml**  
**Buscar .git, .env, backups**  

Identificar sistema operativo.  
**nmap -O IP**  
**TTL ping → Linux/Windows guess**

---

## 2. Escaneo de puertos

Escaneo completo de puertos.  
**nmap -p- IP**

Identificar servicios.  
**nmap -sV IP**

Revisar versiones.  
**nmap -sV -sC IP**

Buscar vulnerabilidades.  
**nmap --script vuln IP**

Escaneo agresivo.  
**nmap -A IP**

---

## 3. Enumeración

### Web

Analizar tecnologías.  
**whatweb URL**  
**wappalyzer**

Buscar rutas.  
**gobuster dir -u URL -w wordlist**  
**ffuf -u URL/FUZZ -w wordlist**

Buscar parámetros.  
**Burp Proxy + Repeater**

Probar extensiones.  
**gobuster -x php,txt,bak**

Fuzzing de parámetros.  
**wfuzz -w wordlist -u URL -d "param=FUZZ"**

Revisar configuraciones.  
**Revisar headers, cookies, CORS, CSP**

Descubrir API.  
**Buscar /api, endpoints, métodos, tokens**

---

### Servicios

SSH.  
**ssh user@IP**  
**hydra -l user -P wordlist ssh://IP**

FTP.  
**ftp IP**  
**anonymous login → ls, get**

SMB.  
**enum4linux -a IP**  
**smbclient -L //IP/**

Redis.  
**redis-cli**  
**redis-cli info**

MySQL.  
**mysql -u root -p -h IP**

HTTP.  
**curl -I URL**  
**Revisar métodos, headers, cookies**

Buscar usuarios.  
**hydra -L users.txt -P pass.txt servicio://IP**

Buscar vulnerabilidades.  
**searchsploit servicio versión**  
**CVE lookup**

Crackear claves SSH.  
**ssh2john id_rsa > hash.txt**  
**john hash.txt --wordlist=rockyou.txt**



- Guardar pruebas.
**hashes, shells, credenciales para reporte final.**

- Explicar vulnerabilidad.
**causa, impacto y solución para cerrar el informe.**
