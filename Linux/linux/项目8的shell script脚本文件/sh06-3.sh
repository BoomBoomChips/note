#!/bin/bash
# Program:
# 	This program shows the user's choice
# History:
# 2012/08/25	Bobby	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N): " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "OK, continue" 
elif [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
	echo "Oh, interrupt!" 
else
	echo "I don't know what your choice is"
fi
