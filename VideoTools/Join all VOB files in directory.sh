#!/bin/bash

NAME=$( zenity --entry="" --title="combine multiple VOB files into one" --text="Name of Output File" )

cat *.VOB > "$NAME".vob
