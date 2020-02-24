#!/bin/bash

INPUT="$(basename "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}")"
OUTPUT=$( zenity --entry="" --title="Convert VOB to MKV" --text="Name of Output File" )

ffmpeg \
  -analyzeduration 100M -probesize 100M \
  -i "$INPUT" \
  -map 0:1 -map 0:2 \
  -codec:v libx264 -crf 21 \
  -codec:a libmp3lame -qscale:a 2 \
  -codec:s copy \
  "$OUTPUT".mkv
