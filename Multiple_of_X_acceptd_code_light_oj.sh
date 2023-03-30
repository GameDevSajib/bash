#!/bin/bash

read t

for ((i=0; i<t; i++))
do
    read n x
    if ((n > x)); then
        echo "Invalid!"
    else
        multiples=$(seq $n $n $x)
        echo "$multiples"
    fi
    echo
done

