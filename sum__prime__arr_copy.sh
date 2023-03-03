#!/bin/bash
####now array

declare -a arr[100]
read n
for((i=0;i<n;i++))
do
   read arr[$i]
   done

declare -i sum=0
for((i=0;i<n;i++))
do
    sum+=arr[$i]
done

echo $sum
echo 

echo   "printing the prime numbers"
declare -a prime[100]
for((i=2;i*i<n;i++))
do
     if((prime[$i]==0));
        then
        for(( j=i*i;j<n;j+=i))
            do
                prime[$j]=1
             done
     fi


done

for((i=2;i<n;i++))
  do
        if((prime[$i]==0));
           then
                   printf "$i\n"
             fi

done


### copying array element to another array ##

declare -a b[100]
declare -a c[100]
read m
for((i=0;i<m;i++))
   do
       read  b[$i]
   done


declare -i k=0
declare -i cnt=0
for((l=0;l<m;l++))
do
       c[$k]=${b[$l]}
       k=$((k+1))
        cnt=$((cnt+1))

done
for((p=0;p<cnt;p++))
do
     echo ${c[$p]}


done
