**Servicio**
SMB


**Puerto habitual**

139 - Antiguo  
445 - Actual


**Qué es**

Servicio de compartición de archivos y recursos en red. Permite listar, acceder y gestionar carpetas compartidas en máquinas Windows o servicios compatibles.


**Riesgos habituales**

- Acceso anónimo
- Shares mal configurados
- Información sensible expuesta
- Versiones antiguas con vulnerabilidades
- Permisos demasiado abiertos


**Enumeración básica**

smbclient //IP/share  → Ver un recurso compartido por SMB

smbclient -L //IP  → Listar los recursos compartidos

smbclient //IP/share -N  → Acceso anónimo (al final es solo una / no dos //)

Acceso con IP + usuario:  
smbclient -L //<ip> -U usuario
