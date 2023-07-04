read -p "Enter the number of elements: " n

for ((i=0; i<n; i++))
do
    read  a[$i]
done

sorted=($(printf "%s\n" "${a[@]}" | sort -n))

for element in "${sorted[@]}"
do
    echo "$element"
done



