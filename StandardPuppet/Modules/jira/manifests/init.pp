class jira {

	file { '/opt/jira.bin':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jira.bin',
		before => Exec['installJira'],
	}
	
	file { '/opt/response.varfile':
		ensure => present,
		source => '/vagrant/Modules/jira/files/response.varfile',
		before => Exec['installJira'],
	}
	
	 exec { 'installJira':
		 onlyif => 'test ! -d /opt/atlassian',
		 provider => shell,
		 command => 'sudo /opt/jira.bin -q -varfile /opt/response.varfile',
	 }
}