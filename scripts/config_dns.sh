;
; BIND data file for local loopback interface
;
$TTL    604800

; A=nom pour adresse IPV4
; @ = libelle spécial qui indique que $ORIGIN doit remplacer ce symbole
@       IN      SOA     dns1.equipe3.lan root.equipe3.lan. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      dns1.equipe3.lan.
dns1    IN      A       192.168.1.7
zabbix  IN      A       192.168.1.4
gitea   IN      A       192.168.1.3
moodle  IN      A       192.168.0.5
netbox  IN      A       192.168.1.5
