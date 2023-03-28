#BISMILLAH#
#!/bin/bash

host="192.168.0.108"
ping -c2 $host &> /dev/null
if(($?==0));
then
echo $host is online
else
echo $host is offline
fi
