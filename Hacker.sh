figlet H A C K E R
#echo "System update korbo : "
#sudo apt-get update

ifconfig | grep broadcast | awk '{print $2}'

echo "Enter your name: "
read -p " " name
echo "My name is" $name
echo "Enter your password"
read -sp " " pass
echo "My password is" $pass

#### how to use flag
echo "My name is $1 my hobby is $2 my favorite pet $3"

##1 thake 10 porjonto sonkaha akata text file a kivhabe nibo

for((i=0;i<10;i++))
do
	echo $i >> number.txt
done



grep "9" number.txt


while read line;
do
	echo $line >> keyboard.txt
done	
