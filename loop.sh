#!bin/bash


echo "Now  take input of array"

read x

for ((j=1;j<=x;j++))
do
   
    echo $j
 
done

### kmne loop er vitor condition lekhe

for((i=1;i<=x;i++))
do
   if [ $((i%2))!=0 ]; then
     echo  $i
   fi
done
###array kmne lekhe bash a

read y
a(y)

for((k=1;k<=y;k++))
do
   read { a[$k] }
done

