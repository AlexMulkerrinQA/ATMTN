#!/usr/bin/env bash

echo "Master of Puppets, pulling the strings!"

sudo apt-get update -y
sudo apt-get install -y puppet puppetmaster 

# add ip to hosts file
sudo sed -i "1i127.0.0.1 $(facter fqdn) puppetmaster" /etc/hosts
sudo sed -i "2i$(facter ipaddress_eth1) $(facter fqdn) puppetmaster" /etc/hosts
sudo cp /vagrant/MasterFiles/masterSite.pp /etc/puppet/manifests/site.pp

(echo "2") | crontab -e
crontab -l | { cat; echo "*/30 * * * * sudo puppet cert sign --all"; } | crontab -

