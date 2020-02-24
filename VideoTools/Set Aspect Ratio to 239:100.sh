#!/bin/bash

INPUT="$(basename "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}")"
NAME=$( zenity --entry="" --title="Set Aspect Ratio" --text="Name of Output File" )

ffmpeg -i "$INPUT" -aspect 239:100 -c copy "$NAME"
