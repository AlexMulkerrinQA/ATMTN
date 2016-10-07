#node agent2 {
#	include jira
#	include nexus
#	notify {'setup agent1':}
#}

node agent1 {
	include java
	include maven
}

node default {
	notify {'puppet rolled out':}
}
