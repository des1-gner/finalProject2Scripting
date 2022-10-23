#!/bin/bash

# Inspected by Oisin Aeonnn s3952320 F2GA on 17/10/2022. 
# Total number of errors found: 5 these found errors are accompanied by a comment that goes into detail about the gategory, description and solution for the code.

# for clarity lengthened variables (code cleanliness)

read -p "Enter Username: " username

read -p "Enter Password: " password

# Error 1: Does not include group variable
read -p "Enter Group: " group



# Error: User Creation
# Error 2: Removal of syntax errors
# Error 3: Requires -s and -m options for user add
# User@dd /bin/bash $user changed to: 
echo " " | sudo -S useradd -m -s /bin/bash $username 


# Error: Password Configuration
# Error 3: Uses another administrator password to authorise 
# passwd $password change to: 
echo "$username:$password" | sudo -S chpasswd 
# NOTE: My password is a spacebar just for simplicity...

# Error: User and group creation and assignment
# Error 4: Did not include Group Creation
echo " " | sudo -S groupadd $group
# Error 5: Did not include Group Assignment
echo " " | sudo -S usermod -G $group $username

