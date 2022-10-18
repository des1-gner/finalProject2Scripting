#!/bin/bash

# Inspected by Oisin Aeonnn s3952320 F2GA on 17/10/2022. 
# Total number of errors found: 4 these found errors are accompanied by a comment that goes into detail about the gategory, description and solution for the code.

# for clarity lengthened variables (code cleanliness)
read -p "Enter Username: " username

read -p "Enter Password: " password

# Error 1: Does not include group assignment...
read -p "Enter Group: " group

# Error 2: Requires Sudo -S 
# Error 3: Removal of syntax errors
# Error 4: Does not use or another administrator password to authorise 
# User@dd /bin/bash $user and
# passwd $password change to 
# my password is a spacebar just for simplicity...
# user and group creation and assignment

# User Creation
echo " " | sudo -S useradd -m -s /bin/bash $username 
# Password Configuration
echo "$username:$password" | sudo -S chpasswd 
# Group Creation
echo " " | sudo -S groupadd $group
# Group Assignment
echo " " | sudo -S usermod -G $group $username

