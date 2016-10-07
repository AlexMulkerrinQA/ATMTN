#node agent2 {
#	include jira
#	include nexus
#	notify {'setup agent1':}
#}

#node default {
	#notify {'puppet rolled out':}
#}
