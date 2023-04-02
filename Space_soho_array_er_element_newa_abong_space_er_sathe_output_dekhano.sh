read T
while (( T-- ))
do
    read t 
    read input

    # save the input array in a space-separated string
    arr=($input)

    for (( i=0; i<t; i+=2 ))
    do
        printf "${arr[i]} "
    done

    echo
done
