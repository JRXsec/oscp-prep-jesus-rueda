SMB

Puertos
139-Antiguo
445-Actual 


smbclient //IP/share  -Comando para ver un recurso compartido por smb

smbclient -L //IP  -Comando para listar los recursos compartidos

smbclient //IP/share -N -Acceso anónimo. (Al final es solo una / no dos //)
