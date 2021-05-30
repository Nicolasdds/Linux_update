#! /bin/bash

echo -e  "\e[1;36m Actualizando Sistema: \e[0m"
apt -y update
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y full-upgrade
echo
echo -e  "\e[1;36m Removiendo paquetes innecesarios: \e[0m"
apt -y autoremove
apt -y --fix-broken install
echo
echo -e  "\e[5;32m ***SISTEMA ACTUALIZADO*** \e[0m"
sleep 2
exit

