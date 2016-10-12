node agent2 {
	include jenkins
	include jira
	include git
	include java
	include maven
	include bamboo
	include nexus
	include mysql
	include zabbix
}

node agent1 {
	include java
	include maven
}

node default {
	notify {'puppet rolled out':}
}
