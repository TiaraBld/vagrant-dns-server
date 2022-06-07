#!/bin/bash 

## install Bind9 Application

sudo apt-get update -y 

sudo apt-get install -y rsync 

sudo apt --yes install bind9 

sudo sed -i '/;/a zone "equipe3.lan" IN {\n       type master;\n       file "/etc/bind/equipe3.lan"; \n};' /etc/bind/named.conf.local

sudo cp /vagrant/scripts/zone_dns.sh /etc/bind/named.conf.options 

sudo cp /vagrant/scripts/config_dns.sh /etc/bind/equipe3.lan 

cd /vagrant/scripts

chmod +x config_route.sh 

sudo ./config_route.sh

sudo service bind9 restart 

#sed -i' /<schéma>/ s / ^ # * // g 'file

