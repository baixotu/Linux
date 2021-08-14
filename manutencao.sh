#!/bin/bash
# Script para manutenção básica do Debian Linux e derivados.
# Salvo no diretório: /usr/local/bin
# chmod +x manutencao.sh
# Escrito no VI.
# @baixotu 14/08/2021. 
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi
apt update
apt upgrade
apt dist-upgrade
apt full-upgrade
apt autoremove
apt autoclean
apt clean
cd /var/log
rm -f *.gz *.old *.0 *.1 
cd /var/log/apt
rm -f *.gz
mandb
updatedb
exit 0

