# Metodología para vulnerar una máquina

## 1. Reconocimiento

- Identificar IP, dominio y DNS.
**Recopilar información inicial del objetivo.**

- Analizar banners y tecnologías.
**whatweb, wappalyzer para detectar stack.**

- Descubrir subdominios.
**gobuster dns, wfuzz para ampliar superficie de ataque.**

- Buscar archivos públicos.
**robots.txt, sitemap, .git, .env para obtener rutas y credenciales.**

- Identificar sistema operativo.
**TTL, nmap OS detection para saber si es Linux o Windows.**

---

## 2. Escaneo de puertos

- Escaneo completo de puertos.
**nmap -p- para descubrir todos los puertos abiertos.**

- Identificar servicios.
**nmap -sV para ver qué corre en cada puerto.**

- Revisar versiones.
**nmap -sV -sC para obtener información detallada.**

- Buscar vulnerabilidades.
**nmap --script vuln para detectar fallos conocidos.**

- Escaneo agresivo.
**nmap -A para obtener OS, scripts y rutas.**

---

## 3. Enumeración

### Web

- Analizar tecnologías.
**whatweb, wappalyzer para detectar frameworks y CMS.**

- Buscar rutas.
**gobuster dir, ffuf para descubrir directorios ocultos.**

- Buscar parámetros.
**Burp Proxy + Repeater para interceptar y modificar requests.**

- Probar extensiones.
**gobuster -x php, txt, bak para encontrar archivos útiles.**

- Fuzzing de parámetros.
**wfuzz -w wordlist -u URL para probar valores vulnerables.**

- Revisar configuraciones.
**headers, cookies, CORS, CSP para detectar fallos.**

- Descubrir API.
**endpoints, métodos, tokens para ampliar vectores de ataque.**

### Servicios

- SSH.
**banners, claves, fuerza bruta con Hydra.**

- FTP.
**anonymous login, ls, get para revisar archivos expuestos.**

- SMB.
**enum4linux, smbclient para listar shares y usuarios.**

- Redis.
**redis-cli info para ver configuración y datos expuestos.**

- MySQL.
**mysql -u root -p para enumerar bases de datos.**

- HTTP.
**métodos, headers, cookies para detectar fallos.**

- Buscar usuarios.
**Hydra, fuzzing de login para obtener credenciales.**

- Buscar vulnerabilidades.
**searchsploit, CVE lookup para encontrar exploits públicos.**

- Crackear claves SSH.
**ssh2john + John para romper passphrases.**

---

## 4. Explotación

- Encontrar vulnerabilidad.
**LFI, RFI, SQLi, XSS, RCE, misconfigs según enumeración previa.**

- Obtener acceso inicial.
**credenciales, exploits, uploads, shells para entrar al sistema.**

- Mantener sesión.
**reverse shell, TTY upgrade, claves SSH para estabilidad.**

- Fuerza bruta SSH.
**hydra -l user -P wordlist ssh://IP para romper contraseñas.**

- Manipular peticiones.
**Burp Repeater para probar payloads y bypasses manuales.**

- Probar extensiones en uploads.
**Intruder + wordlist de extensiones para encontrar bypass de filtros.**

---

## 5. Post-explotación y documentación

- Confirmar nivel de acceso.
**user, service, root para saber alcance.**

- Recopilar evidencias.
**outputs, logs, capturas para documentar el ataque.**

- Registrar cada paso.
**comandos, rutas, credenciales para reproducibilidad.**

- Guardar pruebas.
**hashes, shells, credenciales para reporte final.**

- Explicar vulnerabilidad.
**causa, impacto y solución para cerrar el informe.**
