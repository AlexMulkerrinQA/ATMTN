#!/bin/bash

echo "Minion ready to serve!"

sudo apt-get update -y
sudo apt-get install -y puppet 

# add ip to hosts file
sudo sed -i "1i192.168.1.25 swarmlord.qac.local puppetmaster" /etc/hosts
sudo sed -i "2i127.0.0.1 $(facter fqdn) puppet" /etc/hosts
sudo sed -i "3i$(facter ipaddress_eth1) $(facter fqdn) puppet" /etc/hosts

# add server to puppet configuration
sudo sed -i "2iserver=192.168.1.25" /etc/puppet/puppet.conf

# test the puppet server
sudo puppet agent -t --server=swarmlord.qac.local