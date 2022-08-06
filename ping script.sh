#!/bin/bash
echo "Enter ip address"
read ipaddr
if [ -n Sipaddr ]; then
	ping -c 1 $ipaddr
	if [ $? -eq 0 ];	 then
		echo "Machine is giving a ping response"
	else
		echo "Machine is not giving a ping response"
	fi
else
	echo "ip address is empty"
fi

