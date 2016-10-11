#!/bin/bash

echo "lets do this sh*t!"

# get certificates for puppet enterprise packages
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb
apt-get update

# set ip for puppet master fqdn
sudo sed -i "1i192.168.1.226 enterprise.qac.local puppetmaster" /etc/hosts

# connect to puppet master to get install script
wget https://enterprise.qac.local:8140/packages/current/install.bash --no-check-certificate
chmod +x install.bash
sudo ./install.bash

