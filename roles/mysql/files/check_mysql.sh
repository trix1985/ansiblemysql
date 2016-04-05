#!/bin/bash

#identify mysql service name
SERV_NAME=(mysql mysqld) 

lng=${#SERV_NAME[@]}

for ((i=0;i<$lng;i++)); do
   #echo ${SERV_NAME[i]}
   #check_srv="$(/bin/systemctl status ${SERV_NAME[i]}.service  | /bin/grep Active | /usr/bin/wc -l)" 
   
   check_srv=1

   if [ $check_srv -eq 1 ] 
   then
      mysql=${SERV_NAME[i]}
      #echo 1
        
   fi
done

#echo /usr/sbin/service $mysql status | grep since | wc -l
/usr/bin/yum list installed | /bin/grep mysql | /bin/grep server | wc -l

