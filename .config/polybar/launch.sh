#!/usr/bin/env sh

# pywal or something else likes to do the funny and
# without the delay it simply doesn't show up the bars
sleep 2

polybar-msg cmd quit

polybar -c $HOME/.config/polybar/config.ini upper &
polybar -c $HOME/.config/polybar/config.ini lower &

