class jira {

	file { '/opt/jira.bin':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jira.bin',	
		#notify => Exec['installJira'],
		#notify => Exec['testIfInstalled'],
	}
	
	exec {'command when file missing':
		onlyif 	=> 'test ! -d /opt/test',
		provider => shell,
		command => 'mkdir /opt/test',
	}
	
	exec {'command when file exists':
		onlyif 	=> 'test -d /opt/test',
		user => root,
		provider => shell,
		command => 'echo "hello" > /opt/test/thing.txt',
	}
	
	##exec { 'installJira':
	#	provider => shell,
	#	command => 'echo "test" >> ~/test.txt',
	#}
}