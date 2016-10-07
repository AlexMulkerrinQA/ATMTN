sudo cp /vagrant/IgnoredBinaryFiles/atlassian-bamboo-5.13.2.tar.gz /opt/
cd /opt/
sudo tar -zxvf atlassian-bamboo-5.13.2.tar.gz
sudo sed -i "1ibamboo.home=C:/Desktop" /opt/atlassian-bamboo-5.13.2/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties
cd /opt/atlassian-bamboo-5.13.2/
sudo bin/start-bamboo.sh
echo "GO TO http://localhost:8085 TO COMPLETE INSTALLATION"
