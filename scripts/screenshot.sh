#!/bin/bash
mkdir -p ~/Pictures/screenshot
FILE=~/Pictures/screenshot/$(date +'%Y-%m-%d-%H%M%S.png')
grim -g "$(slurp)" - | tee "$FILE" | wl-copy
