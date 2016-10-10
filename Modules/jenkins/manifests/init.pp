class jenkins {

	file { '/opt/jenkins_2.1_all.deb':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jenkins_2.1_all.deb',
		before => Exec['installJenkins'],
	}
	exec {'installJenkins':
		provider => shell,
		command  => 'sudo dpkg -i /opt/jenkins_2.1_all.deb ;sudo apt-get -qq install -yf; echo "0"',
		onlyif 	 => 'test ! -f /etc/default/jenkins',
		before => File['/etc/default/jenkins'],
	}
	
	file {'/etc/default/jenkins':
		path => '/etc/default/jenkins',
		source => '/vagrant/Modules/jenkins/files/jenkins',
		notify => Service['jenkins'],
	}
	
	service { 'jenkins':
		ensure => 'running',
		enable => true,
	}
}

