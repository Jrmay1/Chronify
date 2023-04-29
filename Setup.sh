#!/bin/bash

# Fetch Latest
git fetch
git checkout master
git pull

# Copy Apache Files to required location
sudo cp chronify.net.conf /etc/apache2/sites-enabled/chronify.net.conf

# Copy website to required location
sudo rm -rf /var/www/chronify.net/publish
sudo cp -r publish /var/www/chronify.net/

# Restart Apache Server
sudo systemctl restart apache2
