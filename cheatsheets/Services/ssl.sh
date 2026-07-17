**Servicio**

OpenSSL


**Puerto habitual**

443 normalmente, pero puede ser cualquier puerto donde el servicio acepte conexiones SSL/TLS.


**Qué es**

Herramienta para establecer conexiones SSL/TLS manuales, verificar certificados, comprobar cifrados soportados y enviar peticiones HTTP a través de SSL.


**Riesgos habituales**

- Certificados caducados o mal configurados
- Protocolos inseguros habilitados (TLS1.0, TLS1.1)
- Cifrados débiles
- Servicios que aceptan conexiones SSL sin validación adecuada
- Información sensible expuesta durante el handshake


**Enumeración básica**

Conexión genérica por SSL  
openssl s_client -connect IP:puerto

Me conecto por SSL al puerto 443  
openssl s_client -connect ejemplo.com:443

Me conecto por SSL pero por un puerto concreto  
openssl s_client -connect 10.10.10.5:30001

Mostrar solo el certificado  
openssl s_client -connect IP:puerto -showcerts

Verificar un certificado  
openssl verify certificado.crt

Comprobar protocolo y cifrados soportados  
openssl s_client -connect IP:puerto -tls1_2  
openssl s_client -connect IP:puerto -tls1_3

Enviar una petición HTTP manual por SSL  
openssl s_client -connect IP:puerto  
GET / HTTP/1.1  
Host: IP

Salir de la sesión SSL  
QUIT
Salir de la sesión SSL
QUIT


