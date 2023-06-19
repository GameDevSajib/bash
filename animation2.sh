#!/bin/bash
spinner=(sajib sabir pranto saad johan syem rashed topu afridi)

sajib(){
   while((1))
   do
       for i in "${spinner[@]}"
       do
	       echo -ne "\r$i"
	       sleep 0.5
       done
   done

}
sajib
