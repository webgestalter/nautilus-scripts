#!/bin/bash

NAME=$( zenity --entry="1920:1080" --title="combine multiple VOB files into one" --text="Name of Output File" )

cat *.VOB > $NAME.vob
