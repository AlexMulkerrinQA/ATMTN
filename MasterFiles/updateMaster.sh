#!/usr/bin/env bash

sudo cp /vagrant/MasterFiles/masterSite.pp /etc/puppet/manifests/site.pp

echo "puppet master manifest updated"
cat /etc/puppet/manifests/site.pp