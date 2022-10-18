#!/bin/bash

# Menu
	echo "Oisin Aeonn's File and Data Searcher"

# variable for file name (with extension) e.g. Teams.txt
read -p "Enter File: " var

# if statement to check file existence
if [ -f $var ]
then 
	echo "File exists"    
# variable for data to search in file
    read -p "Enter text to search in $var : " var2
# searches for data inside specified folder and writes it into pattern.txt
    grep -i "$var2" $var > pattern.txt
# msg to help ensure user knows where filtered data is stored
    echo "Saved Matching Lines to pattern.txt"


# error statement if file is not found.
else 
    echo "File not found. "
fi



