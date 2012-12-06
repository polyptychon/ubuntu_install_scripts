# Run the script in debug mode
set -x

# update the package index
sudo apt-get update -y

# install ruby
sudo apt-get install ruby1.9.3 -y

# Remove vagrant ruby
#sudo rm -rf /opt/vagrant_ruby

source ~/.bashrc

# test ruby and gems
ruby -v
/usr/local/bin/gem list