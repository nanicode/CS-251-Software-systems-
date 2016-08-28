#!/bin/bash
file="dictionary.txt"
while IFS= read -r name										#accounts for the backlash and unnecessary trimings
do 
	password="$name"
	yes | unzip -q -P $password legendaryPokemon.zip 
	
	if [ $? -eq 0 ];										#checks if the previous task was a success or not
	then
		echo "$password"									#prints only the value of the correct password shows errors for some other values

	fi
done < "$file"
