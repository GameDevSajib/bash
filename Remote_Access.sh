#BISMILLAH#
#!bin/bash
ping -c2 192.168.0.108
if(($?==0));
then
echo "online"
else
echo "offline"
fi
