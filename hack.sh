#!/bin/bash
##########BISMILLAH#####
declare -a arr
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

if (($sum%2==0));
  then
       echo "even"
   else echo "odd"
fi

###now for prime number##
declare -a prime
read m
for((i=2;i*i<m;i++))
   do
         if((prime[$i]==0));
             then
                for((j=i*i;j<m;j+=i))
                      do
                          prime[$j]=1
                       done
              fi
   done

for((i=2;i<m;i++))
    do
        if((prime[$i]==0));
              then
                   echo $i
              fi
done



