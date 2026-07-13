# 🌐 Web Testing

## Metodología

1. Identificar las tecnologías utilizadas.
2. Enumerar directorios y archivos.
3. Enumerar subdominios si aplica.
4. Identificar parámetros de entrada.
5. Interceptar las peticiones con Burp Suite.
6. Analizar autenticación y sesiones.
7. Buscar vulnerabilidades comunes.
8. Documentar todos los hallazgos.

---

# Reconocimiento

## Identificar tecnologías

```bash
whatweb http://TARGET
```

Extensiones útiles:

- Wappalyzer
- BuiltWith

---

## Enumeración de directorios

```bash
gobuster dir -u http://TARGET -w WORDLIST
```

```bash
ffuf -u http://TARGET/FUZZ -w WORDLIST
```

---

## Enumeración de subdominios

```bash
ffuf -u http://FUZZ.domain.com -H "Host: FUZZ.domain.com" -w WORDLIST
```

---

# Burp Suite

## Herramientas

- Proxy
- Repeater
- Intruder
- Decoder
- Comparer

## Flujo de trabajo

1. Interceptar petición.
2. Enviarla a Repeater.
3. Modificar parámetros.
4. Analizar la respuesta.
5. Automatizar pruebas con Intruder cuando sea necesario.

---

# Métodos HTTP

| Método | Uso |
|---------|-----|
| GET | Solicitar información |
| POST | Enviar información |
| PUT | Actualizar recursos |
| DELETE | Eliminar recursos |
| PATCH | Modificar parcialmente un recurso |
| OPTIONS | Consultar métodos permitidos |
| HEAD | Obtener solo cabeceras |

---

# Códigos HTTP

| Código | Significado |
|---------|-------------|
| 200 | OK |
| 301 | Redirección permanente |
| 302 | Redirección temporal |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Internal Server Error |

---

# Vulnerabilidades Web

## SQL Injection

### Parámetros interesantes

- id=
- product=
- category=
- search=
- user=

### Tipos

- Error-Based
- UNION-Based
- Blind
- Time-Based

---

## Path Traversal

### Parámetros interesantes

- file=
- filename=
- path=
- page=
- document=
- template=

### Concepto

Permite acceder a archivos fuera del directorio previsto cuando la aplicación no valida correctamente las rutas proporcionadas por el usuario.

---

## File Upload

Comprobar:

- Extensiones permitidas.
- Content-Type.
- MIME Type.
- Validación del servidor.
- Ubicación donde se almacenan los archivos.

---

## Authentication

Comprobar:

- Fuerza bruta.
- Credenciales por defecto.
- Recuperación de contraseña.
- Política de contraseñas.
- Gestión de sesiones.

---

## Cookies

Analizar:

- Session ID
- HttpOnly
- Secure
- SameSite

---

## Headers HTTP

Comprobar:

- Server
- X-Powered-By
- CSP
- HSTS
- CORS

---

# Herramientas

## Enumeración

- Nmap
- Gobuster
- FFUF
- WhatWeb
- Wappalyzer

## Proxy

- Burp Suite

## Peticiones HTTP

- cURL

## Wordlists

- SecLists
- DirBuster
- RockYou


# Recursos

- PortSwigger Web Security Academy
- OWASP Top 10
- PayloadsAllTheThings
- GTFOBins
- Hack The Box Academy
- TryHackMe
