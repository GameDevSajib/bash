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
    $sum+=$arr[$i]
done

echo $sum
echo 
