class jira {
	notify {"jira isn't here yet.":}
	file { '/opt/jira.bin':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jira.bin',	
		notify => Exec['installJira'],
	}
	
	exec { 'installJira':
		provider => shell,
		command => 'echo "test" >> ~/test.txt',
	}
}