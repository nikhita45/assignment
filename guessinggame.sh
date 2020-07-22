#!/bin/bash
echo "WELCOME TO THE GUESSING GAME"
echo "You have to guess the number of files that are present in the repository assignment"
echo "************************************************************************************"
c=0
for i in ls assignment
do
	let c=i+1
done

function ans {
	echo "Enter the Number of Files present:"
	read no
	if [[ $no -gt $c ]]
	then
		echo ""
		echo "WRONG the number you have entered is greater than the number of files present"
		ans
	elif [[ $no -lt $c ]]
	then
		echo ""
		echo "WRONG the number you have entered is less than the number of files present"
		ans
	else
		echo "CONGRAGULATIONS!!! you have gotten the right number. the number of files are: $no"
	fi
}

ans 
echo "GAME END"
echo "************************************************************************************"
