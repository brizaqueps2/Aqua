#!/usr/bin/env bash

install() {
	clear
	
	#Theme
	cp -av theme/Aqua/ /usr/share/themes/
		
	#Icon
	cp -av icon/Aqua/ /usr/share/icons/
	
	#Sound
	cp -av sound/Aqua/ /usr/share/sounds/
}

if [ "$(id -u)" == "0" ]
then
	install
else
	clear
	echo "Run as system administrator"
fi
