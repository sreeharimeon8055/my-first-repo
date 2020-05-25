
function guessthegame {
	newfiles=$(ls -1 | wc -l)
	while true
	do
		echo "How many files are there now?"
		read inputuser

		if ! [[ $inputuser =~ ^[0-9]+$ ]]
		then
			echo "This is not a non-negative number. Please try again."
		
		elif [[ $inputuser -ne $newfiles ]]
		then	
			if [[ $inputuser -gt $newfiles ]]
			then
				echo "This is high than files. Please try again."
			else
				echo "This is low than files. Please try again."
			fi

		else	
			echo "This is correct. Congrats!"
			echo "Program ended."
			break
		fi
	done
}

guessthegame