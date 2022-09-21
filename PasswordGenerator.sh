#!/bin/bash
#creating my first shell script
 echo "please enter the length of password"
read PASSLENGTH
for i in $(seq 1);
do

   openssl rand -hex 48 |cut -c1-$PASSLENGTH
done
