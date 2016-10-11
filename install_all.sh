cd /vagrant/Modules

sudo puppet apply jira/tests/init.pp
echo "jira completed"
read -p "Press any key..."

sudo puppet apply git/tests/init.pp
echo "git completed"
read -p "Press any key..."

sudo puppet apply java/tests/init.pp
echo "java completed"
read -p "Press any key..."

sudo puppet apply maven/tests/init.pp
echo "maven completed"
read -p "Press any key..."

sudo puppet apply bamboo/tests/init.pp
echo "bamboo completed"
read -p "Press any key..."

sudo puppet apply nexus/tests/init.pp
echo "nexus completed"
read -p "Press any key..."

sudo puppet apply jenkins/tests/init.pp
echo "jenkins completed"
read -p "Press any key..."

sudo puppet apply mysql/tests/init.pp
echo "mysql completed"
read -p "Press any key..."
























