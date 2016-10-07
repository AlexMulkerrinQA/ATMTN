sudo cp /vagrant/IgnoredBinaryFiles/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar  /opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar
cd /opt


sudo apt-get -fy install
sudo apt-get install libaio1
sudo apt-get install libmecab2 
sudo apt-get -fy install

sudo tar -xvf mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar
sudo dpkg -i mysql-common_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-community-client_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-client_5.7.15-1ubuntu14.04_amd64.deb
sudo DEBIAN_FRONTEND="noninteractive" dpkg-preconfigure mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-server_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i libmysqlclient20_5.7.15-1ubuntu14.04_amd64.deb
