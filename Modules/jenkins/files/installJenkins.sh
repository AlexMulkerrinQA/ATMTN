echo "...Jenkins..."
cd /opt 
sudo dpkg -i jenkins_2.1_all.deb
sudo apt-get -qq update 
sudo apt-get -qq install -yf
sudo apt-get install -y jenkins
# need to edit /etc/default/jenkins
# change line 57 from HTTP_PORT=8080 to HTTP_PORT=8088
sed "s/HTTP_PORT=8080/HTTP_PORT=8088/g"
sudo service jenkins start
