#!/usr/bin/env bash

echo "Master of Puppets, pulling the strings!"
# get useful packages
sudo apt-get install -y {vim,tree}

# DANGER disable firewall
sudo ufw disable

# get puppet master package
sudo apt-get install -y puppet puppetmaster
sudo apt-get update -y
sudo apt-get install -y puppet 

# add ip to hosts file
sudo sed -i "1i127.0.0.1 $(facter fqdn) puppetmaster" /etc/hosts
sudo sed -i "2i$(facter ipaddress_eth1) $(facter fqdn) puppetmaster" /etc/hosts
sudo touch /etc/puppet/manifests/site.pp

(echo "2") | crontab -e
crontab -l | { cat; echo "*/30 * * * * sudo puppet cert sign --all"; } | crontab -

