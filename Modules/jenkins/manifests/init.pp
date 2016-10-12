class jenkins {

	file { '/opt/jenkins_2.1_all.deb':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jenkins_2.1_all.deb',
		before => Exec['installJenkins'],
	}
	
	#file {'/etc/default/jenkins':
	#	path => '/etc/default/jenkins',
	#	source => '/vagrant/Modules/jenkins/files/jenkins',
	#	before => Exec['installJenkins'],
	#}
	
	exec {'installJenkins':
		provider => shell,
		command  => 'sudo dpkg -i /opt/jenkins_2.1_all.deb; echo 0',
		before => Exec['installDependecies'],
	}	
		
	exec {'installDependecies':
		provider => shell,
		command  => 'sudo apt-get -qq install -yf; echo 0',
		onlyif 	 => 'test ! -f /etc/default/jenkins',
		before => Service['jenkins'],
	}
	
	service { 'jenkins':
		#require => Exec['installDependecies'],
		ensure => 'running',
		enable => true,
	}
}

