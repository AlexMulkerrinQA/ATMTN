node agent2 {
	include jira
}

node agent1 {
	include java
	include maven
}

node default {
	notify {'puppet rolled out':}
}
