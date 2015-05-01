#!/bin/bash


        read -p "link: " link
        read -p "start: " start
        read -p "stop: " stop
        read -p "name: " name

        youtube-dl -f best -o temp.mp4 $link
        ffmpeg -i temp.mp4 -loglevel panic -ss $start -c copy -to $stop $name.mp4 &> /dev/null
        rm -f temp.mp4
