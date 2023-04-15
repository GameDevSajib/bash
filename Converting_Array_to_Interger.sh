##BISMILLAH
declare -a arr
read n

for((i=0;i<$n;i++))
do
      read arr[$i]
done

declare -i j=0
declare -i var=0
declare -i number=0
while(($j<$n))
do
     val=arr[$j]
     while(($val!=0))
     do
          val=$((val/10))
          number=$((number*10))
     done
      number+=arr[$j]
      j=$((j+1))
done
echo $number

