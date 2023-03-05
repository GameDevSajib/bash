#!/bin/bash
echo                             "                       BISMILLAH           "
echo                             "                    Developed by:Md Sajibur Rahman   "
echo                             "                    Roll:18cse048                     "
echo                             "                    University of Barishal            "


declare -a arr[100]
declare -a brr[100]
read  n
for((i=0;i<n;i++))
do
     read arr[$i]
done


declare -i k=0
declare -i cnt=0
for((j=0;j<n;j++))
 do
     brr[$k]=${arr[$j]}
     k=$((k+1))
     cnt=$((cnt+1))

 done

for((l=0;l<cnt;l++))
do
    printf ${brr[$l]}

done

echo 
##########################finding the maximum element in an array#############
declare -i mx=0
for((p=0;p<cnt;p++))
do
   if((mx<${brr[$p]}));
      then
          mx=${brr[$p]}
   fi       

done

echo  $mx
