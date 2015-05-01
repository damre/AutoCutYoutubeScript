#!/bin/bash


while read line
do
	link=$(echo $line | cut -d'*' -f1)
	name=$(echo $line | cut -d'*' -f3 | tr -d '\r')
	times=$(echo $line | cut -d '*' -f2)

	IFS=' ' read -a array <<< "$times"

	youtube-dl -f best -o temp.mp4 $link

	aLen=${#array[@]}
	for (( i=0; i<$aLen; i++))
	do
	start=${array[$i]}
	stop=${array[$(($i+1))]}
#echo "start: " $start  "  Stop: " $stop
	stopminute=$(echo $stop | cut -d'.' -f1)
        stopseconds=$(echo $stop | cut -d'.' -f2)
        stopsec=$(($stopminute * 60 + $stopseconds))
#echo "stopminute: " $stopminute "   stopsecond: " $stopseconds "   Stopsec: " $stopsec
	startminute=$(echo $start | cut -d'.' -f1)
        startseconds=$(echo $start | cut -d'.' -f2)
        startsec=$(($startminute * 60 + $startseconds))
#echo "startminute: " $startminute "  startsecond: " $startseconds "  startsec:  " $startsec
	totalduration=$(($stopsec - $startsec))
#echo "totalduration: " $totalduration
	nameok=$name$i
	echo "Cut "$name$i
	avconv -i temp.mp4 -ss $startsec -v panic -vcodec copy -acodec copy -t $totalduration $nameok.mp4

	((i++))
	done

	rm -f temp.mp4 &>/dev/null

done < videolist.txt
