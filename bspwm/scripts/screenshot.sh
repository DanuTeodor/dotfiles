#!/bin/bash

# options to be displayed
option0="screen"
option1="area"
option2="window"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p "flameshot")"
case $selected in
    $option0)
        cd ~/Pictures/ && sleep 1 && flameshot;;
    $option1)
        cd ~/Pictures/ && flameshot -s;;
    $option2)
        cd ~/Pictures/ && sleep 1 && flameshot -u;;
esac

