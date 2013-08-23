#!/bin/sh

echo "This script requires superuser access."
echo "Please give your password when prompted by sudo."

# reset sudo permissions
sudo -k

sudo sh <<SCRIPT

	# add the repository for dropbox
	echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list

	# add the repository key
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59

	# update package list
	apt-get update

	# install dropbox
	apt-get -y install spotify-client

SCRIPT

