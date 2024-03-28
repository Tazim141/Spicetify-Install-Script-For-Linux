#!/bin/bash

# Add Spotify repository key
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg

# Add Spotify repository to sources list
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Update package lists
sudo apt-get update

# Install Spotify client
sudo apt-get install spotify-client -y

# Set permissions for Spotify directory and its contents
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R

# Install Spicetify CLI
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh





