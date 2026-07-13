SSH

Conexión SSH normal
ssh usuario@192.168.1.50

Conexión SSH con un puerto no estándar
ssh -p numero_puerto usuario@IP

Conexión SSH con una clave privada
ssh -i clave.pem usuario@ip

Conexión SSH con modo verbose
ssh -v usuario@IP
Sirve para ver errores y detalles de la conexión.

Conexión SSH forzando un cifrado específico
ssh -c aes256-ctr usuario@IP
Útil en máquinas antiguas o configuraciones raras.

Conexión SSH indicando un usuario específico
ssh -l usuario IP
Otra forma de indicar el usuario.

Copiar archivos del local al remoto (SCP)
scp archivo.txt usuario@IP:/ruta/destino

Copiar archivos del remoto al local (SCP)
scp usuario@IP:/ruta/archivo.txt .

Copiar carpetas de forma recursiva
scp -r carpeta usuario@IP:/ruta/destino

Generar una clave SSH
ssh-keygen -t rsa
Clave RSA típica.

Añadir la clave al archivo authorized_keys
cat id_rsa.pub >> ~/.ssh/authorized_keys
Permite iniciar sesión sin contraseña.

Comprobar la versión de SSH
ssh -V
Sirve para saber si es vulnerable a cosas como CVE-2018-15473.

Probar conexión SSH sin iniciar sesión
ssh -o BatchMode=yes usuario@IP
Útil para scripts.
