#!/bin/bash
read t
while((t--))
do
read n
declare -a arr
declare -i x=0
declare -i k=0
for((i=5;i<1000;i=i*5))
do
     x=$((n/i))
     arr[$k]=$x
     k=$((k+1))
done

declare -i sum=0
for((j=0;j<k;j++))
do
     sum=$((sum+arr[j]))
done

echo $sum

done
