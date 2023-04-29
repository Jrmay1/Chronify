#!/bin/bash

# Fetch Latest
git fetch
git checkout master
git pull

# Copy Apache Files to required location
cp chronify.net.conf /etc/apache2/sites-enabled/chronify.net.conf

# Copy website to required location
rm -rf /var/www/chronify.net/publish
cp -r publish /var/www/chronify.net/

# Restart Apache Server
sudo systemctl restart apache2
