#BISMILLAH#

read t
while((t--))
do
read n x
z="$x"
if((n>x));
then
echo "Invalid!"
fi

if((n<x));
then
for((i=1;i<=n;i++))
do
     y=$((n*i))
     if((y>=z));
     then
      break
     fi
     echo $y        
done
fi

echo
done
