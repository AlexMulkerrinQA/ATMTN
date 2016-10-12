node agent2 {
	include jenkins
	include jira
	#include git
	#include java
	#include maven
	#include bamboo
	#include nexus	
}

node agent1 {
	include java
	include maven
}

node default {
	notify {'puppet rolled out':}
}
