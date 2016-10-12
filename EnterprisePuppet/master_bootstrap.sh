#!/bin/bash

echo "setting up enterprise puppet master..."

# get certificates for puppet enterprise packages
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update

cp /vagrant/puppet-enterprise-2015.2.0-ubuntu-14.04-amd64.tar.gz /opt/
cd /opt/
tar -zxf puppet-enterprise-2015.2.0-ubuntu-14.04-amd64.tar.gz
cd puppet-enterprise-2015.2.0-ubuntu-14.04-amd64
sudo ./puppet-enterprise-installer -a /vagrant/all-in-one.answers.txt