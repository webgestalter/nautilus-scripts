#!/bin/bash

OUTPUT=$( zenity --entry="" --title="Extract Pages of PDF" --text="Name of Output Folder" )

pdfimages -png "${NAUTILUS_SCRIPT_SELECTED_FILE_PATHS}" "${NAUTILUS_SCRIPT_CURRENT_URI}"/"$OUTPUT"
