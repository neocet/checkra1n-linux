#!/usr/bin/bash


##############################################################
#   	      _               _              _		     #
#   	  ___| |__   ___  ___| | ___ __ __ _/ |_ __	     #
#   	 / __| '_ \ / _ \/ __| |/ / '__/ _` | | '_ \	     #
#   	| (__| | | |  __/ (__|   <| | | (_| | | | | |	     #
#   	 \___|_| |_|\___|\___|_|\_\_|  \__,_|_|_| |_|	     #
#				                             #
#   	        --CLI Checkra1n installation--	 	     #
# 				                             #
##############################################################
#
# This script is mainly for any non-Debian based linux distribution
# Debian based distros can just add the checkra1n repo and install the app directly on their system through apt
# However, at the time of this script was written the repo could not be added to the system due to some errors
# This will be updated when the Checkra1n team has fixed this issue
# In the mean time, you should just download the Checkra1n manually or use this script for the ease of installation if you're running a Debian based linux distribution
#
#
echo "Script is starting..." && sleep 2


# Downloading the actual Checkra1n file directly from their website
echo 'Fetching the Checkra1n file from checkra.in' && sleep 0.5
wget https://assets.checkra.in/downloads/linux/cli/x86_64/fa08102ba978746ff38fc4c1a0d2e8f231c2cbf79c7ef6d7b504e4683a5b7d05/checkra1n
chmod +x ./checkra1n && sleep 1


# Inputting the username
# For some reason, the application icon isn't working when using '$USER' for the home directory
# If you don't know your username, you can check it on your prompt (usually the one on the very left)
echo 'You will need to input your username in order to proceed' && sleep 0.75
echo 'Not to worry, your data is safe' && sleep 0.75
userin(){
    echo -n 'Please enter your username: '
    read name
    sleep 0.5
    echo -ne "We've picked up that your username is \"$name\". Is this correct? (y/n) "
    read response
    if [[ "$response" =~ ^[Yy] ]]; then
        echo "Alright working on it"
    fi
    if [[ "$response" =~ ^[Nn] ]]; then
        echo "Please try again"
        sleep 0.5
        userin
    fi
}
userin
sleep 2


# Configuring the application dirctory
echo 'Creating the required directories'
mkdir /home/$name/.checkra1n && mv ./checkra1n /home/$name/.checkra1n/checkra1n
sleep 2


# Configuring the application icon
echo 'Fetching icon' && sleep 1
wget https://checkra.in/img/icon.png
mv ./icon.png /home/$name/.checkra1n/icon.png


# Creating desktop entry
# This will register Checkra1n as an application
echo 'Creating Desktop Entry' && sleep 1.5
echo "[Desktop Entry]" >> checkra1n.desktop
echo "Type=Application" >> checkra1n.desktop
echo "Name=Checkra1n" >> checkra1n.desktop
echo "Comment=The Pre-A12 iDevice Jailbreaking Tool" >> checkra1n.desktop
echo "Icon=/home/$name/.checkra1n/icon.png" >> checkra1n.desktop
echo "Exec=sudo /home/$name/.checkra1n/checkra1n" >> checkra1n.desktop
echo "Terminal=true" >> checkra1n.desktop
echo "Categories=System" >> checkra1n.desktop
echo 'Done'
sleep 2
# Note that this will only create an application entry for the current user
# If you want to make it available for all user, move the file to /usr/share/applications
echo 'Moving Files'
mv checkra1n.desktop /home/$name/.local/share/applications
sleep 2


echo 'All Done!'
sleep 1
echo 'You will be prompted to enter your password in order to run Checkra1n properly'
sleep 0.75
echo 'Jailbreak your device with caution and do it at your own risk'
sleep 0.75
echo 'Please restart the session to register Checkra1n as an application'
sleep 0.75

# Thank you for using this script
# Have a nice day!
