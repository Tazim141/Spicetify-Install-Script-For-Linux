#!/bin/bash

# Add Spotify repository key
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo apt-key add -

# Add Spotify repository to sources list
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Update package lists and install Spotify
sudo apt-get update && sudo apt-get install -y spotify-client

# Set permissions for Spotify directory
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R

# Install spicetify-cli
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh


