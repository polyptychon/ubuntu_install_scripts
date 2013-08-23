#!/bin/sh

echo "This script requires superuser access."
echo "Please give your password when prompted by sudo."

# reset sudo permissions
sudo -k

sudo sh <<SCRIPT

	# add the repository for dropbox
	echo "deb http://linux.dropbox.com/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/dropbox.list

	# add the repository key
	apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E

	# update package list
	apt-get update

	# install dropbox
	apt-get install python-gpgme dropbox

SCRIPT

