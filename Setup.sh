#!/bin/bash

# Do not run if root
if [ $(id -u) -eq 0 ]; then

   echo "Please do not run as root"
   exit
fi

# Fetch Latest
echo "Pulling Latest Changes"
git fetch
git checkout master
git pull

echo "Copying Apache Config Files"
sudo cp chronify.conf /etc/apache2/sites-enabled/chronify.conf

echo "Copying web page files"
sudo rm -rf /var/www/chronify/publish
sudo cp -r publish /var/www/chronify/

echo "Restarting Apache Server"
sudo systemctl restart apache2

echo "Complete"
