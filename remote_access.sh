#BISMILLAH

declare -i flag=0
ping -c2 192.168.0.108
if(($?==0));
then
     echo "cannoction pise"
     flag=1;
else
     echo "connection pinai"
fi 

if((flag==1));
then
nmap -sV 192.168.0.108/24
fi
