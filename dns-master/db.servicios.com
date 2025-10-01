$TTL    86400
@       IN      SOA     ns1.servicios.com. admin.servicios.com. (
                        2025093001 ; Serial
                        3600       ; Refresh
                        1800       ; Retry
                        1209600    ; Expire
                        86400 )    ; Minimum

; ----- Servidores de nombres -----
        IN      NS      ns1.servicios.com.
        IN      NS      ns2.servicios.com.

; ----- Registros A para los nombres de host -----
ns1     IN      A       192.168.50.4
ns2     IN      A       192.168.50.5
firewall IN     A       192.168.50.3
ftp     IN      A       192.168.50.2
www     IN      A       192.168.50.3

; (Opcional) nombre del dominio a la IP del firewall
@       IN      A       192.168.50.3

