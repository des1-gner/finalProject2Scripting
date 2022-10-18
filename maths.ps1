# While Loop for whole program
$i = 1
while ($i -ne 3)
{
# Menu 1
	echo "
-------------Oisin Aeonn's Maths Calculator------------

----------------Press Enter to Continue----------------

--------------------------OR---------------------------

--------------------Press Q to Quit--------------------
		"
		# Get User Inpu
    $menuOption = Read-Host -Prompt "Press Enter to Continue"
	# Quit if Q is inputted
	if ( $menuOption -match "Q" )
	{
		echo "Thank You for using this Tool, Goodbye!"
		$i  = 3	
    }	
	
    # If alphabetic characters are selected will display this error message and then go back to Menu 1
	elseif ( $menuOption -match '[a-zA-Z]' )
    {
		echo "Invalid Input, cannot Input Letters, please try again. "
    }
    	
	# If numeric characters are selected will display this error message and then go back to Menu 1
	elseif ( $menuOption -match '[0-9]' ) 
	{
		echo "Invalid Input, cannot Input Numbers, please try again. "
    }	
	
    # If special characters are selected will display this error message and then go back to Menu 1
	elseif ( $menuOption -match '[!@#\$%^\*_+]' ) 
	{
		echo "Invalid Input, cannot Input Special Characters, please try again. "
	}	
    
	# If none of these input errors occur then display Menu 2 and ask for user input on number of subnets 			
	else
    {	
	# Menu 2
	echo "Input: "
    echo 1. "For Addition"
    echo 2. "For Subtraction"
    echo 3. "For Multiplication"
    echo 4. "For Division"
		
        $Operation = Read-Host -Prompt "Enter Operation Type"
   
		# if input2 has alphabetic characters are selected will display this error message and then go back to Menu 1
		if ( $Operation -match '[a-zA-Z]' ) 
		{
			echo "Invalid Input, cannot Input Letters, please try again. "
        }		

        # if input2 has special characters are selected will display this error message and then go back to Menu 1
		elseif ( $Operation -match '^[^0-9a-zA-Z]+$' ) 
		{
			echo "Invalid Input, cannot Input Special Characters, please try again. "
        }

		# if input2 has is less than 1 will display this error message and then go back to Menu 1
		elseif ( $Operation -lt 1 )
		{ 
			echo "Operation range selection only goes down to 1. Please enter a Valid Input. "
        }

        # if input2 has is greater than 4 will display this error message and then go back to Menu 1
		elseif ( $Operation -gt 4 )
		{
			echo "Operation range selection only goes up to 4. Please enter a Valid Input. " 
        }

		# will do Addition if 1 is selected
		elseif ( $Operation -ge 1 -AND $Operation -le 4 )
		{       
            $no1 = Read-Host -Prompt "Enter Number 1: "
            $no2 = Read-Host -Prompt "Enter Number 2: "
        }

        if (-not ($no1 -match '[0-9]' -AND $no2 -match '[0-9]') )
            {
                echo "Invalid Input for Numbers. Please enter a Valid Input. "			
            }
        else
            {
			# will do Addition if 1 is selected
		        if ( $Operation -eq 1 )
		        {
			        $total= [int]$no1 + [int]$no2
		        }
            # will do Subtraction if 2 is selected
		        elseif ( $Operation -eq 2 )
		        {
                    $total= [int]$no1 - [int]$no2
                }
		    # will do Multiplication if 3 is selected
		        elseif ( $Operation -eq 3 )
		        { 
                    $total= [int]$no1 * [int]$no2
                }
		    # will do Division if 4 is selected
		        elseif ( $Operation -eq 4 )
		        {
		        	$total= [int]$no1 / [int]$no2
                }
}		        

echo "Total: $total"
		
}

}
