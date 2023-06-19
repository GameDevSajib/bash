figlet          kalihacker2021




echo " Enter the number of range you want to print the prime number using Seive algorithm: " 
read n
for((i=2;i*i<=n;i++))
do
	if((prime[$i]==0));
	then
		for((j=i*i;j<=n;j+=i))
		do
			prime[$j]=1
		done
	fi
done

for((i=2;i<=n;i++))
do
	if((prime[$i]==0));
	then
		echo $i
	fi
done



echo "Internet connection ase kina check kora "
declare -i flag=0
url="google.com"
ping -c 5 $url > /dev/null
if(($?!=0));
then
       flag=0
      
else
	flag=1
fi


if((flag==1));
then
	echo " connection ase "
else
	echo "connection nai"
fi




#echo " Amar banano md5 cracker "
#python3 md5_password_cracker.py


echo " Amar banao server "
python3 server.py



#echo " Executing a c++ file into bash "
#./sajib



