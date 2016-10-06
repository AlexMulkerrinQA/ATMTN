node agent1 {
	include jira
	include nexus
	notify {'setup agent 1':}
}

node default {
	notify {'puppet rolled out':}
}
