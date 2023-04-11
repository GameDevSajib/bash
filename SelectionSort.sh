### BISMILLAH ###
read n
for((i=0;i<n;i++))
do
     read a[$i]
done
#####logic for selection sort
for((i=0;i<n-1;i++))
do
     min_idx=${a[$i]} #### minumum index namok variable er moddo value pass korlam
     index=$i        #### $i to index to take dorar jonno akta variable patlam   
     for((j=i+1;j<n;j++))
     do
          if((a[j]<min_idx));
          then
                min_idx=${a[j]}
                index=$j
          fi
     done

     ###akon korte hbe swapping er kaj
      temp=${a[$i]}
      a[$i]=${a[$index]}
      a[$index]=$temp

done

####now printing the sorted array
for((i=0;i<n;i++))
do
     printf "${a[$i]} "
done
