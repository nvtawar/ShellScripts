#!/bin/bash
#This script will execute every minute
echo "Enter ip address"
ipaddr=216.58.203.36
if [ -n $ipaddr ]; then
	ping -c 1 $ipaddr
	if [ $? -eq 0 ];	 then
		echo "Machine is giving a ping response at $(date)" | tee -a pal_log  
	else
		echo "Machine is not giving a ping response at $(date)" | tee -a pal_log
	fi
else
	echo "ip address is empty at $(date)" | tee -a pal_log
fi

