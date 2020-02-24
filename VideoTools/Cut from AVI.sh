#!/bin/bash

INPUT="$(basename "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}")"
FROM=$( zenity --entry="" --title="Cut Part from MP4" --text="Startpoint (hh:mm:ss)" )
  TO=$( zenity --entry="" --title="Cut Part from MP4" --text="Endpoint (hh:mm:ss)" )
NAME=$( zenity --entry="" --title="Cut Part from MP4" --text="Name of Output File" )

ffmpeg -i "$INPUT" -ss $FROM -to $TO -c:v copy -c:a copy "$NAME".avi
