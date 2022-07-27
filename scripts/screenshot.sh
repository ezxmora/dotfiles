#!/bin/bash

. "${HOME}/.cache/wal/colors.sh"
SCREENSHOTS_FOLDER="$HOME/images/screenshots"
MONTH_YEAR_DATE=$(date +"%m-%y")
SC_FOLDER_PATH=$SCREENSHOTS_FOLDER/$MONTH_YEAR_DATE
RANDOM_STRING=$(echo $RANDOM | md5sum | head -c 20; echo;)
IMAGE_PATH="${SC_FOLDER_PATH}/${RANDOM_STRING}.png"

[ ! -d "$SC_FOLDER_PATH" ] && mkdir -p $SC_FOLDER_PATH

if [ $1 -eq "fullscreen" ]
then
    scrot -q 100 -f $IMAGE_PATH -e 'xclip -selection clipboard -t image/png -i $f'
else
    scrot -s -q 100 -f $IMAGE_PATH -e 'xclip -selection clipboard -t image/png -i $f' -l "style=dash,width=1,color=${color7}"
fi

if [ -f $IMAGE_PATH ]
then
    dunstify -t 1600 -I $IMAGE_PATH "Screenshot saved"
fi

