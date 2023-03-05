#!/bin/bash

function merge_sort {
    local lo=$1
    local hi=$2

    if [ $lo -eq $hi ]; then
        return
    fi

    local mid=$(( ($lo+$hi)/2 ))

    merge_sort $lo $mid
    merge_sort $(( $mid+1 )) $hi

    local i=$lo
    local j=$(( $mid+1 ))
    local k=$lo

    while [ $k -le $hi ]; do
        if [ $i -eq $(( $mid+1 )) ]; then
            temp[$k]=${num[$j]}
            j=$(( $j+1 ))
        elif [ $j -eq $(( $hi+1 )) ]; then
            temp[$k]=${num[$i]}
            i=$(( $i+1 ))
        elif [ ${num[$i]} -lt ${num[$j]} ]; then
            temp[$k]=${num[$i]}
            i=$(( $i+1 ))
        else
            temp[$k]=${num[$j]}
            j=$(( $j+1 ))
        fi
        k=$(( $k+1 ))
    done

    for ((k=$lo; k<=$hi; k++)); do
        num[$k]=${temp[$k]}
    done
}

# main program
read n
lo=1
hi=$n

for ((i=1; i<=$n; i++)); do
    read num[$i]
done

merge_sort $lo $hi

for ((i=1; i<=$n; i++)); do
    echo -n "${num[$i]} "
done
echo
