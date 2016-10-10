sudo cp /vagrant/IgnoredBinaryFiles/maven.tar.gz /opt/maven.tar.gz
cd /opt
sudo tar zxvf maven.tar.gz

sudo update-alternatives --install /usr/bin/mvn mvn /opt/apache-maven-3.3.9/bin/mvn 100
sudo update-alternatives --config mvn

export PATH=/opt/apache-maven-3.3.9/bin:$PATH
