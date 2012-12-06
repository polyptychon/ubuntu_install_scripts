# Run the script in debug mode
set -x

# Install the puppet gem
sudo gem install puppet --no-ri --no-rdoc

# Create puppet group and user
sudo puppet resource group puppet ensure=present
sudo puppet resource user puppet ensure=present gid=puppet shell='/sbin/nologin'

# create the puppet.conf file if not exists
sudo mkdir -p /etc/puppet
sudo touch /etc/puppet/puppet.conf

sudo cp puppet-3.0.1/auth.conf /etc/puppet/auth.conf