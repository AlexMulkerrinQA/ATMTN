cp /tmp/shared/java.tar.gz /home/vagrant/Desktop
cd /home/vagrant/Desktop
tar zxvf java.tar.gz
sudo update-alternatives --install /usr/bin/java java /home/vagrant/Desktop/jdk1.8.0_45/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /home/vagrant/Desktop/jdk1.8.0_45/bin/javac 100