#!/bin/bash

sajib(){
   echo -n "swhowing you animation"
   echo 
   spin  &
   pid=$!

   for((i=0;i<10;i++))
   do
	   sleep 1
   done

   kill $pid
   echo ""
}

spin(){
   while((1))
   do
	   echo -ne "#"
	   sleep 0.2
   done
}
sajib
