#!/bin/bash

FILE_DIR=$HOME/pictures/screenshot
FILENAME=$(date +%Y-%m-%d-%s).png
scrot -i --stack --freeze --select --silent --file $FILE_DIR/$FILENAME
xclip -sel c -t image/png -i $FILE_DIR/$FILENAME
