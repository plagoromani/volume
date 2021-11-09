# MODIFICACIONES EN EL ARCHIVO DE CONFIGURACIÓN
##
## Modificar los forwarders
## Crear Zona
## Crear archivo que tendrá los datos de esa zona
## sudo cp /etc/bind/db.local /etc/bind/db.example.com
##
##  Crear zona reversa 
##  Crear archivo que tendrá los datos de la reverse zone
## sudo cp /etc/bind/db.127 /etc/bind/db.10
##
## Para aplicar los cambios de la zona debemos ejecutar sudo systemctl restart bind9.service
##
##
##
## Para añadir el dns al cliente debemos modificar el resolv.conf del cliente
## Para ello añadimos 
## nameserver  127.0.0.53
## search example.com -
##
## Para comprobar que está funcionando, ejecutamos dig -x 127.0.0.1 y nos tendría que devolver 
## ;; SERVER: 10.1.0.10#53(10.1.0.10)
## ping example.com
## PING ns.example.com (10.1.0.10) 56(84) bytes of data.
## 64 bytes from 10.1.0.10: icmp_seq=1 ttl=64 time=0.800 ms
## 64 bytes from 10.1.0.10: icmp_seq=2 ttl=64 time=0.813 ms
##
## named-checkzone example.com /etc/bind/db.example.com Para comprobar la zona







