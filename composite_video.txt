#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Call the script with ./$(basename "$0") (path to image) (path to video)"
else
    ffmpeg -r 1 -loop 1 -i "$1" -i "$2" -acodec copy -r 1 -shortest -vf scale=1920:1080 video.mp4
fi
