#!/bin/bash

NAME=$( zenity \
  --entry="1920:1080" \
  --title="JPG and MP3 to MP4" \
  --text="give the name" \
  )

cd "/media/stvn/Elements/Projekte/We dont die we multiply/Lumpenprolet/Das Kapital/Prozess/";
ffmpeg -r 1 -loop 1 -i $NAME.jpg -i $NAME.mp3 -acodec copy -r 1 -shortest -vf scale=1920:1080 $NAME.mp4
