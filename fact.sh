#!/bin/bash

factorial()
{
    if (( $1 <= 1 )); then
        echo 1
    else
        echo $(($1*$(factorial $(( $1 - 1 )))))
    fi
}
read n
factorial n


