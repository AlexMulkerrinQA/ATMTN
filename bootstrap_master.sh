#!/usr/bin/env bash

echo "Master of Puppets, pulling the strings!"

sudo apt-get update -y
sudo apt-get install -y puppet puppetmaster 

# add ip to hosts file
sudo echo "127.0.0.1 swarmlord.qac.local puppetmaster" >> /etc/hosts
sudo echo "192.168.1.25 swarmlord.qac.local puppetmaster" >> /etc/hosts
sudo touch /etc/puppet/manifests/site.pp

