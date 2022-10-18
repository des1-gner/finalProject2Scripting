#!/bin/bash
# While Loop for whole program
while true
do
# Menu 1
	echo "
-------------Oisin Aeonn's Maths Calculator------------

----------------Press Enter to Continue----------------

--------------------------OR---------------------------

--------------------Press Q to Quit--------------------
		"
		# Get User Input
	read -n 1 -r -s -p $'Press Enter to Continue...\n' menuOption
	# Quit if Q is inputted
	if [[ $menuOption == "Q" ]]
	then
		echo "Thank You for using this Tool, Goodbye!"
		break
		# If alphabetic characters are selected will display this error message and then go back to Menu 1
	elif [[ $menuOption =~ [a-zA-Z] ]]
    then
		echo "Invalid Input, cannot Input Letters, please try again. "
		# If numeric characters are selected will display this error message and then go back to Menu 1
	elif [[ $menuOption =~ [0-9] ]] 
	then
		echo "Invalid Input, cannot Input Numbers, please try again. "
		# If special characters are selected will display this error message and then go back to Menu 1
	elif [[ $menuOption == *['!'@#\$%^\&*()_+]* ]] 
	then
		echo "Invalid Input, cannot Input Special Characters, please try again. "
			# If none of these input errors occur then display Menu 2 and ask for user input on number of subnets 			
	else	
	# Menu 2
	echo "Input: "
    echo 1. "For Addition"
    echo 2. "For Subtraction"
    echo 3. "For Multiplication"
    echo 4. "For Division"
		
        read -p "Enter Operation Type: " Operation
   
		# if input2 has alphabetic characters are selected will display this error message and then go back to Menu 1
		if [[ $Operation =~ [a-zA-Z] ]] 
		then
			echo "Invalid Input, cannot Input Letters, please try again. "
		
        # if input2 has special characters are selected will display this error message and then go back to Menu 1
		elif [[ $Operation =~ ^[^0-9a-zA-Z]+$ ]] 
		then
			echo "Invalid Input, cannot Input Special Characters, please try again. "

			# if input2 has numeric floats will display this error message and then go back to Menu 1
		elif [[ $Operation ]] && ! [ $Operation -eq $Operation 2>/dev/null ]  
		then
			echo "Invalid Input, cannot Input Floats, please try again. "

		# if input2 has is less than 1 will display this error message and then go back to Menu 1
		elif [[ $Operation -lt 1 ]]
		then 
			echo "Operation range selection only goes down to 1. Please enter a Valid Input. "

        # if input2 has is greater than 4 will display this error message and then go back to Menu 1
		elif [[ $Operation -gt 4 ]]
		then
			echo "Operation range selection only goes up to 4. Please enter a Valid Input. " 

		# will do Addition if 1 is selected
		elif [[ $Operation -ge 1 && $Operation -le 4 ]]
		then       

			read -p "Enter Number 1: " no1
			read -p "Enter Number 2: " no2

        if ! [[ $no1 =~ [0-9] && $no2 =~ [0-9] ]]
            then
                echo "Invalid Input for Numbers. Please enter a Valid Input. "			
        
        else
			# will do Addition if 1 is selected
		        if [ $Operation = 1 ]
		        then
			        total=`expr $no1 + $no2`
		    # will do Subtraction if 2 is selected
		        elif [ $Operation = 2 ]
		        then
		        	total=`expr $no1 - $no2`
		    # will do Multiplication if 3 is selected
		        elif [ $Operation = 3 ]
		        then 
            		total=`expr $no1 \* $no2`
		    # will do Division if 4 is selected
		        elif [ $Operation = 4 ]
		        then
		        	total=`expr $no1 / $no2`

fi		        
		
fi

fi

fi

echo "Total: $total"

done
