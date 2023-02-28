#!/bin/bash

read  n
for((i=0;i<n;i++))
do
     printf "$i\n"
done

#########  seive  ##########

declare -a  prime[100]
for((i=2;i*i<n;i++))
   do
        if((prime[$i]==0));
           then
                for((j=i*i;j<n;j+=i))
                   do
                        prime[$j]=1
                    done

         fi


    done
echo    "    Printing the prime numbers    "
for((i=2;i<n;i++))
do
     if((prime[$i]==0));
          then
          echo   $i
     fi


done


##########  copying array element to another  array  ######################

declare -a arr[100]
read m
for((k=0;k<m;k++))
do
      read arr[$k]
done

for((l=0;l<m;l++))
do


      printf ${arr[l]}
done
