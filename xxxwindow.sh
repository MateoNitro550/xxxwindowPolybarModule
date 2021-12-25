#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "Enter WM_NAME value here" ]; then

	echo "It is possible to add a name to the blank windows to something like 'empty', if we don't want the Polybar to show us anything on the screen, leave this blank"

elif [ $WM_DESKTOP != "1883" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

	if [ $WM_CLASS == 'Application name to change' ]; then

		echo "%{F#ffffff}here goes the custom name%{u-}"
	else

		echo "%{F#ffffff}$WM_NAME%{u-}"

	fi

fi
