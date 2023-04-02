read T
while (( T-- ))
do
    read t input

    # save the input array in a space-separated string
    arr=($input)

    for (( i=0; i<t; i+=2 ))
    do
        printf "%s " "${arr[i]}"
    done

    echo
done

