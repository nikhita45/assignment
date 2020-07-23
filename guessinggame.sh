#!/bin/bash
echo "WELCOME TO THE GUESSING GAME"
echo "You have to guess the number of files that are present in the repository assignment"
echo "************************************************************************************"
c=0
c=$(ls|wc -l)
function ans {
	no=-1
	while [[ $c -ne $no ]]
	do
		echo "Enter your GUESS:"
		read no
		if [[ $no -gt $c ]]
		then
			echo ""
			echo "WRONG, the number you have entered is GREATER than the number of files present"
		elif [[ $no -lt $c ]]
		then
			echo ""
			echo "WRONG, the number you have entered is LESS than the number of files present"
		else
			echo "CONGRAGULATIONS!!! you have gotten the right number. the number of files are: $no"
		fi
	done
}
ans 
echo "GAME END"
echo "************************************************************************************"
