#!/usr/bin/env bash

Something = "String"
echo $Something

echo "Minion ready to serve!"
# get useful packages
sudo apt-get install -y {vim,tree}

# DANGER disable firewall
sudo ufw disable

# get agent puppet package
sudo apt-get install -y puppet 
sudo apt-get update -y
sudo apt-get install -y puppet 

name =$(facter fqdn)
ipaddress = $(facter ipaddress_eth1)

# add ip to hosts file
sudo echo "192.168.1.25 swarmlord.qac.local puppetmaster" >> /etc/hosts
sudo echo "127.0.0.1 $name puppet" >> /etc/hosts
sudo echo "$ipaddress $name puppet" >> /etc/hosts

# add server to puppet configuration
sudo echo "server=192.168.1.25" >> /etc/puppet/puppet.conf

# test the puppet server
sudo puppet agent -t --server=swarmlord.qac.local