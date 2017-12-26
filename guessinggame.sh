#Begin script

echo "How many files are in the current directory?"
echo "Guess: "
read guess

function retrieve_file_number {
	local num = $(ls -l | wc -l)-1
	echo $num
}

correct_num = $(retrieve_file_number)

while [[ $guess -ne $correct_num ]]
do 
	if [[ $guess -gt $correct_num ]]
	then 
		echo "Sorry, your guess was too high."
	else 
		echo "Sorry, your guess was too low."
	fi
	echo
	echo "Guess again: "
	read guess
done

echo "Good work. You guessed the right number! $correct_num." 
