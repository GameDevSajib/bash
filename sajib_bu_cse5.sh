#BISMILLAH
#!/bin/bash
	echo Hello,  $(whoami)
echo Your current working directory is $(pwd)  

	echo "Enter The options you want"
	echo 
	echo "Option 1: Arrange my Files:"
	echo "Option 2: Checking Either a number is prime or not "
	echo "Option 3: Search my directory"
	echo "Option 4: Exit" 

	read x
	if((x==1));
	then
#touch command to create  .c file
	touch Hello.c

#creating a diractory named sajib
	mkdir sajib
#now moving all .c files
	mv *.c /home/sajib/Assignment/sajib 
#mv *.c $(pwd)
	bash sajib_bu_cse5.sh




	elif((x==2));
	then
###Checking Either a number is prime or not 

	read n
	declare -i flag=0
	for((i=2;i*i<=n;i++))
	do  
	if((n%i==0));
	then
	flag=1
	break

	fi

	done
	if(($flag==1));
	then
	echo " $n is not prime"
	else 
	echo "$n is prime"
	fi
	bash sajib_bu_cse5.sh

	elif((x==3));
	then
###Searching the directories 
#touch sajib.txt
	echo "Computer Science & Engineering" > sajib.txt

	grep "Engineer"  sajib.txt  
	bash sajib_bu_cse5.sh 

	elif((x==4));
	then
	exit


	else
	echo "Invalid Choice"
	bash sajib_bu_cse5.sh
	fi



