#!/bin/bash

# had a menu, but did not work with crontab...

# overwrite linux.log 
echo "Updating" 
echo " " | sudo -S sudo apt-get update > /home/des1gner/Desktop/Linux.log
# add to linux.log
echo "Upgrading" 
echo " " | sudo -S sudo apt-get -y upgrade >> /home/des1gner/Desktop/Linux.log
echo "Update Successful, Please Check Log. "

# had a bug - requires full length directory for crontab to function and create file...
