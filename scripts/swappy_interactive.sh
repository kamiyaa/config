#!/bin/bash

## Depends on:
## - grim
## - slurp
## - swappy

DATE=$(date '+%Y%m%d_%H%M%S_%N')
SLURP_AREA=$(slurp)
grim -g "$SLURP_AREA" - | swappy -f -
