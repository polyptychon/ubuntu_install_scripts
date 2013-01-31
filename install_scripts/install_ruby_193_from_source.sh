# Run the script in debug mode
set -x

# update the package index
sudo apt-get update -y

# install ruby pre-requisites
sudo apt-get install build-essential zlib1g zlib1g-dev libssl-dev libreadline-dev git-core curl libyaml-dev libcurl4-gnutls-dev libsqlite3-dev apache2-dev -y

#install libyaml (needed for pcych)
wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
tar xzf yaml-0.1.4.tar.gz
cd yaml-0.1.4
./configure
make
sudo make install
# clean up yaml files
cd ..
rm yaml-0.1.4.tar.gz
rm -rf yaml-0.1.4/


# Download , uncompress and install ruby 193
curl --remote-name http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p327.tar.gz
tar zxf ruby-1.9.3-p327.tar.gz
cd ruby-1.9.3-p327/
./configure
make
sudo make install

# clean up
cd ..
rm ruby-1.9.3-p327.tar.gz
rm -rf ruby-1.9.3-p327/

# Remove vagrant ruby
# sudo rm -rf /opt/vagrant_ruby

# reload path
source ~/.bashrc

# test ruby and gems
ruby -v
/usr/local/bin/gem list
