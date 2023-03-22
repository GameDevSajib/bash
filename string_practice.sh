#!/bin/bash
#duto string soman kina
read  s1
read  s2

x=${#s1}
y=${#s2}

declare -i flag=0

if(($x!=$y)); then
    flag=1
else
    for ((i=0; i<x; i++)); do
        if(("${s1:i:1}" != "${s2:i:1}")); then
            flag=1
            break
        fi
    done
fi

if(($flag==1)); then
    echo "not equal"
fi

