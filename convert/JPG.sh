#!/bin/bash

echo -e "$NAUTILUS_SCRIPT_SELECTED_FILE_PATHS" | xargs -i convert "{$selectedpath}" "{$selectedpath}.jpg"
