# ATMTN: Automation of provisioning a group of VMs with Puppet

Setting up your system so you don't have to!

# To Run:

* Ensure that you have Git installed
* Ensure vagrant version 1.8.6 is installed (run 'vagrant version' in Bash)
* Ensure Virtual box version 5.1.2 is installed(Go: help -> About VirtualBox)
* Clone the repository
	* Choose a location for the repository
	* Right click, open Git Bash, then type into git bash: 'git clone https://github.com/AlexMulkerrinQA/ATMTN.git'
* Add the IgnoredBinaryFiles to git project 
	* Put the UBS flash drive into the computer
	* Copy over the IgnoredBinaryFiles folder into the StandardPuppet directory which you will find within the git project
* Open the bash command line in StandardPuppet directory within the repository
* Type 'vagrant up swarmlord agent2' (master and single agent)

# To check everything is installed:

* jenkins goto 192.168.1.31:8080
* jira goto 192.168.1.31:8480
* git check `git --version`
* java check `java -version`
* maven check `mvn --version`
* bamboo goto 192.168.1.31:8085
* nexus goto 192.168.1.31:8081
* mysql check `mysql --version`
* zabbix `zabbix_agentd -V`

# Group members:

* Alex
* Alistair
* Tim
* Dharam
* Will... rip
