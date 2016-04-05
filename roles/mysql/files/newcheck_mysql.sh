#!/bin/bash
if_mysql_installed="$(/usr/bin/yum list installed | /bin/grep mysql | /bin/grep server | wc -l)"

if [ $if_mysql_installed -eq 1 ]
   then

      #mysql=${SERV_NAME[i]}
      echo $if_mysql_installed
      
      ! true
      #echo "exit status of\"! true\" = $?  

fi

