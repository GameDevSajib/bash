#!/bin/bash
cnt=0
while(($cnt < 5))
do
	sleep 0.5
	cnt=$((cnt+1))
	printf "#"
done


