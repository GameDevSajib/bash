
#!/bin/bash

echo "BISMILLAH"
echo  $BASH
echo   $BASH_VERSION

name=sajib
echo my name is $name

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
