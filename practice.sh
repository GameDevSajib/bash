#!/bin/bash
####now array
declare -a arr
read n
for((i=0;i<n;i++))
do
   read arr[$i]
   done

sum=0
for((i=0;i<n;i++))
do
    sum+=$arr[$i]
done

echo $sum
echo 
