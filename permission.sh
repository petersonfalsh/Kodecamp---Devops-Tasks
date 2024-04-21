#!/bin/bash

#Define the file path
file="$HOME/permission_file"

    #check if the file exists
	if [ -f "$file" ]; then
		echo "The file $file exists."

		sleep 2

		#check file permissions
		
		#check if file is readable
		if [ -r $file ]; then
			echo "$file is readable"
		else
			echo "$file is NOT readable"
		fi

		sleep 2

		#check if file is writable
		if [ -w $file ]; then
			echo "You can write in the file $file"
		else
			echo "$file is NOT writable"
		fi

		sleep 2

		#check if file is executable
		if [ -x $file ]; then
			echo "You can execute $file"
		else
			echo "$file is NOT executable"
		fi

		sleep 2

		#check file ownership
		owner=$(stat -c "%U" "$file")
		sleep 3
		echo "owner of the $file is: $owner"
	
	else
		echo "The file $file does not exist."
	fi







