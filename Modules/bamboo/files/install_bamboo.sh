sudo cp /vagrant/IgnoredBinaryFiles/atlassian-bamboo-5.13.2.tar.gz /opt/
cd /opt/
sudo tar -zxvf altassian-bamboo-5.13.2.tar.gz
echo "bamboo.home=C:/Desktop" > /opt/atlassian-bamboo-5.13.2/atlassian-bamboo/WEB-INF/classes
cd /opt/atlassian-bamboo-5.13.2/
sudo bin/start-bamboo.sh
echo "go to http://localhost:8085"
