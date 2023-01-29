  GNU nano 6.4                                          practice2.sh                                                    echo my name is $name

read -p "username:" user
read  -sp "password" pass
echo "username is : $user"
echo  "password is :$pass"


###NOW GETTING STARTED WITH CONDITION

count=10
if(($count>9))
   then
   echo "condition is true"
fi



###using third bracket
word=abcd
if [[ $word -eq  "abcd" ]]
 then
      echo "yes!! they are equal"
fi

