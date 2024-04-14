#!/usr/bin/bash

case ${1,,} in 
	vikram | admin)
		echo "Hello you are the boss here!"
		;;
	help)
		echo "Just enter your username"
		;;
	*)
		echo "Idk who you are"
		;;
esac
