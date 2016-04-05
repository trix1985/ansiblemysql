#!/bin/bash

#identify OS
OS_VERSION="$(/bin/cat /etc/*release | /bin/grep CentOS | /bin/grep release | /usr/bin/head -1)"

if [[ $OS_VERSION == *"6."*  ]] 
   then
   OS_VERSION=6
   /etc/init.d/mysqld stop > /dev/null;

   #check status
   #/etc/init.d/mysqld status

fi

if [[ $OS_VERSION == *"7."*  ]]
   then
   OS_VERSION=7
   /usr/sbin/service mysql stop > /dev/null

   #CHECK status
   #/bin/systemctl status mysql.service > /dev/null

fi

#echo "Mysql service was stopped"

