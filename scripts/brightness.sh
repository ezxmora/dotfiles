#!/bin/bash

msgTag="brightness"

get_brightness () {
    b=$(light | grep -oE '^[0-9]+')
}

send_notification () {
	# Send the notification
    dunstify -t 1600 -h string:x-dunst-stack-tag:$msgTag -u normal "Brightness: ${b}%" -h int:value:"$b"
}

case $1 in
    up)
        get_brightness
        light -A 5 > /dev/null
        send_notification
        ;;
    down)
        get_brightness
        light -U 5 > /dev/null
        send_notification
        ;;
esac

