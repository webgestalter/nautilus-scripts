#!/bin/bash

FROM=$( zenity --entry="" --title="Cut Part from M4A" --text="Startpoint (hh:mm:ss)" )
  TO=$( zenity --entry="" --title="Cut Part from M4A" --text="Endpoint (hh:mm:ss)" )
NAME=$( zenity --entry="" --title="Cut Part from M4A" --text="Name of Output File" )

ffmpeg -i "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" -ss $FROM -to $TO -c:v copy -c:a copy "$NAME".m4a
