node agent2 {
	#include jira
	#include git
	include java
	#include maven
	#include bamboo
	#include nexus
	#include jenkins
}

node agent1 {
	include java
	include maven
}

node default {
	notify {'puppet rolled out':}
}
