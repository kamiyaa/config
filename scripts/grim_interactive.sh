#!/bin/bash

DIR="$1"

DATE=$(date '+%Y%m%d_%H%M%S_%N')
SLURP_AREA=$(slurp)
grim -g "$SLURP_AREA" "${DIR}/${DATE}_grim.png"
