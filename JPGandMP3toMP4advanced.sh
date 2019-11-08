#!/bin/bash

# RESOLUTION=$( zenity
#  --entry="1920:1080"
#  --title="Video Resolution"
#  --text="width:height"
#  )


# RESOLUTION=$( zenity --forms --title="JPG and MP3 to MP4" --text="Options" \
#   --add-entry="Resolution" \
#   --add-entry="Filename" )

# OUTPUT=$(zenity --forms \
#  --title="JPG and MP3 to MP4" \
#  --text="Options" \
#  --separator="," \
#  --add-entry="Resolution" \
#  --add-entry="Filename" \
#  ) accepted=$?
#
# if ((accepted != 0)); then
#    echo "something went wrong"
#    exit 1
# fi
#
# resolution=$(awk -F, '{print $1}' <<<$OUTPUT)
# filename=$(awk -F, '{print $2}' <<<$OUTPUT)
#
# echo $resolution $filename


#if [ "$#" -ne 2 ]; then
#    echo "Call the script with ./$(basename "$0") (path to image) (path to video)"
#else
#    ffmpeg -r 1 -loop 1 -i "$1" -i "$2" -acodec copy -r 1 -shortest -vf scale=$RESOLUTION video.mp4
#fi


# FILENAME=$( zenity --entry-text="blabla" --title="Filename" --text="filename" )
# ffmpeg -r 1 -loop 1 -i "$1" -i "$2" -acodec copy -r 1 -shortest -vf scale=1920:1080 $FILENAME.mp4


# eingabe="$(yad --entry --button="create MP4" --title="Filename" --text="options")"

# yad --info --text="Die Eingabe war $eingabe"


default_jpg='/media/stvn/Elements/Projekte/We dont die we multiply/Lumpenprolet/Das Kapital/Prozess/B1A1K1-1.jpg';
default_mp3='/media/stvn/Elements/Projekte/We dont die we multiply/Lumpenprolet/Das Kapital/Prozess/B1A1K1-1.mp3';
default_resolution='1920:1080';
default_filename="/media/stvn/Elements/Projekte/We dont die we multiply/Lumpenprolet/Das Kapital/Prozess/B1A1K1-1.mp4";

OUTPUT=$(yad \
  --title="JPG and MP3 to MP4" \
  --form \
    --text="Options" \
    --separator="," \
    --field="JPG:FL" \
    --field="MP3:FL" \
    --field="Resolution" \
    --field="MP4 (Output):SFL" \
    --button="Create MP4":1 \
    "$default_jpg" \
    "$default_mp3" \
    "$default_resolution" \
    "$default_filename" \
  ) accepted=$?

if ((accepted == 1)); then
  jpgfile=$(   awk -F, '{print $1}' <<<$OUTPUT)
  mp3file=$(   awk -F, '{print $2}' <<<$OUTPUT)
  resolution=$(awk -F, '{print $3}' <<<$OUTPUT)
  filename=$(  awk -F, '{print $4}' <<<$OUTPUT)

  echo $jpgfile $mp3file $resolution $filename
fi


#if ((accepted == 1)); then

#echo $OUTPUT

#fi
# if ((accepted == 1)); then
#    ffmpeg -r 1 -loop 1 -i "$jpgfile" -i "$mp3file" -acodec copy -r 1 -shortest -vf scale=$resolution "$filename"
#    exit 1
# fi

# if ((accepted != 0)); then
#    echo "something went wrong"
#    exit 1
# fi



# if [[ $accepted -eq 1 ]]; then
#    ffmpeg -r 1 -loop 1 -i "$jpgfile" -i "$mp3file" -acodec copy -r 1 -shortest -vf scale=$resolution "$filename"
# fi
