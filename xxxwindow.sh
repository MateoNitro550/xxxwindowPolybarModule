#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "1883" ]; then

	echo ""

elif [ $WM_DESKTOP != "1883" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | sed 's/"//' | rev | sed 's/"//' | rev)

	if [ $WM_CLASS == 'Gnome-terminal' ]; then

		echo "Parrot Terminal"
	else

		echo $WM_NAME

	fi

fi
