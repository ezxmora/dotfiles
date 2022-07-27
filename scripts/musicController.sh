#!/bin/bash

PLAYER="spotify"
ACTION=$1

playerctl $1 -p $PLAYER
