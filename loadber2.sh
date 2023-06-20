#!/bin/bash

init(){

percent=$1
bar_cnt=0
printf "\033[s"

}

update(){
	bar_cnt=$(($bar_cnt + 100))
	if [ $(($bar_cnt % $percent)) -lt  100 ];
	then
	bar="$bar#"
	fi	
	printf "\033[u $bar\033[u \033[100C $(($bar_cnt / $percent))%%\n"
}


init 500

cnt=0
while(($cnt < 500))
do
	sleep 0.01
	cnt=$(($cnt+1))
	update
done


