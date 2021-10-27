#!/usr/bin/env bash

uninstall() {
	clear

	#Theme
	rm -rf /usr/share/themes/Aqua

	#Icon
	rm -rf /usr/share/icons/Aqua
	
	#Sound
	rm -rf /usr/share/sounds/Aqua
}

if [ "$(id -u)" == "0" ]
then
	uninstall
else
	clear
	echo "Run as system administrator"
fi
