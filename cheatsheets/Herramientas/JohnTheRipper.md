
**Para qué sirve**
Extrae el hash de una clave SSH privada (id_rsa) para poder hacer fuerza bruta y recuperar la passphrase. John the Ripper se usa después para crackear ese hash.

**Cuándo la uso**
Post-explotación, cuando consigo una clave SSH privada protegida con passphrase y necesito romperla para acceder al sistema.

**Comandos básicos**

**Saca el hash de una clave SSH privada.**
ssh2john id_rsa > hash.txt

**Variación según la ruta del binario.**
bin/ssh2john id_rsa > hash.txt

**Otra ruta común en algunas distros.**
/bin/ssh2john id_rsa > hash.txt

**Hace fuerza bruta sobre el hash extraído.**
john hash.txt --wordlist=/usr/share/wordlists/rockyou.txt
