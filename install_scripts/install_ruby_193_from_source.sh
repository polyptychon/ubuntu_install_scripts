# Run the script in debug mode
set -x

# update the package index
sudo apt-get update -y

# install ruby pre-requisites
sudo apt-get install build-essential -y         
sudo apt-get install zlib1g -y
sudo apt-get install zlib1g-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install libreadline-dev -y
sudo apt-get install git-core -y
sudo apt-get install curl -y
sudo apt-get install libyaml-dev -y
sudo apt-get install libcurl4-gnutls-dev -y
sudo apt-get install libsqlite3-dev -y
sudo apt-get install apache2-threaded-dev -y

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
