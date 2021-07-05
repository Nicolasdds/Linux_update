#! /bin/bash
clear
echo -e  "\e[1;36m Updating System: \e[0m"
apt -y update
apt-get -y update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y full-upgrade
updatedb
echo " "
echo -e  "\e[1;36m Checking for independent updates: \e[0m"
apt-get -y upgrade beef
apt-get -y upgrade ssh
apt-get -y upgrade virtualbox-dkms
apt-get -y upgrade docker
#Comamnds, python, libs, automake, etc...
apt-get -y upgrade cct
echo " "
echo -e  "\e[1;36m Removing unnecessary packages: \e[0m"
apt -y autoremove
apt-get autoclean
apt-get clean
apt -y --fix-broken install
echo " "
echo -e  "\e[5;32m ***System Updated*** \e[0m"
#Send notification by email:
echo "Linux updated succesfuly!" | /opt/smtp-cli-master/smtp-cli.php "Email subject" "Your email"
sleep 2
exit

