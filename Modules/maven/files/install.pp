cp /tmp/shared/maven.tar.gz /home/vagrant/desktop
cd /home/vagrant/Desktop

tar zxvf maven.tar.gz

sudo update-alternatives --install /usr/bin/mvn mvn /home/vagrant/Desktop/apache-maven-3.3.9/bin/mvn 100
sudo update-alternatives --config maven

export PATH=/Desktop/apache-maven-3.3.9/bin:$PATH




