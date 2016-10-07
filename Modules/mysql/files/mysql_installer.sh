sudo cp /vagrant/IgnoredBinaryFiles/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar  /opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar
cd /opt
sudo debconf-set-selections <<< 'mysql-community-server mysql-community-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-community-server mysql-community-server/root_password_again password root'
sudo apt-get -fy install
sudo apt-get install libaio1
sudo tar -xvf mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar
sudo dpkg -i mysql-common_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-community-client_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-client_5.7.15-1ubuntu14.04_amd64.deb
DEBIAN_FRONTEND="noninteractive" sudo dpkg-preconfigure mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i mysql-server_5.7.15-1ubuntu14.04_amd64.deb
sudo dpkg -i libmysqlclient20_5.7.15-1ubuntu14.04_amd64.deb
