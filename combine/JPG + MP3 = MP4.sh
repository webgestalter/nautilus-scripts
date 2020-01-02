#!/bin/bash

IFS=$'\n'
for line in $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS
do
	  if [[ $line =~ .*".mp3" ]]; then audio=$line
	elif [[ $line =~ .*".jpg" ]]; then image=$line
	  fi
done

NAME=$( zenity --entry="" --title="JPG + MP3 = MP4" --text="Name of Output File" )

ffmpeg -r 1 -loop 1 -i "$image" -i "$audio" -acodec copy -r 1 -shortest -vf scale=1920:1080 "$NAME".mp4
