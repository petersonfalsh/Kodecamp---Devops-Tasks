#!/bin/bash

#PACKAGE="htop"

echo "Enter a package name to check if it's installed"
read PACKAGE

if  dpkg -s "$PACKAGE" ; then
	echo "$PACKAGE is available and already installed"
else
	echo "$PACKAGE is not installed... installing it now..."
	sleep 3
	sudo apt update
	sudo apt install "$PACKAGE"
	sleep 2
	echo "$PACKAGE successfully installed"
fi
