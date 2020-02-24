#!/bin/bash

INPUT="$(basename "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}")"
EX=${INPUT##*.}

FORM=$( zenity --forms --title="Cut Part from VOB" --separator="," --text="Cut Part from VOB" \
  --add-entry="Startpoint (hh:mm:ss)" \
  --add-entry="Endpoint (hh:mm:ss)" \
  --add-entry="Name of Output File")

FROM=$(awk -F, '{print $1}' <<<$FORM)
TO=$(awk -F, '{print $2}' <<<$FORM)
NAME=$(awk -F, '{print $3}' <<<$FORM)

ffmpeg -i "$INPUT" -ss $FROM -to $TO -c:v copy -c:a copy "$NAME".$EX
