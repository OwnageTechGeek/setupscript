#!/bin/bash

  #This script logs items.
  $WRITETOFILE=(date +%y-%m-%d).log
  
case "$1" in
	log)
		# Logs to file an error, warning, etc.
		if [ "$2" == 1 ]; then
		  sed -i 'Critical Error has occured | $* |' $WRITETOFILE 
		  echo "Commmited."
		elif [ "$2" == 2 ]; then	
		  sed -i 'Warning | $* |' $WRITETOFILE
		  echo "Commited."
		fi
		;;
	*)
		echo "No such command."
		exit 1
		;;
esac

exit 0
