class jenkins {

	file { '/opt/jenkins_2.1_all.deb':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jenkins_2.1_all.deb',
		before => Exec['installJenkins'],
	}
	
	file { '/opt/openjdk-7-jre-headless_7u111-2.6.7-0ubuntu0.14.04.3_amd64.deb':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jenkinsArchive/openjdk-7-jre-headless_7u111-2.6.7-0ubuntu0.14.04.3_amd64.deb',
		before => Exec['installJenkins'],
	}
	
	exec {'installJenkins':
		provider => shell,
		command  => 'sudo dpkg -i /opt/jenkins_2.1_all.deb /opt/openjdk-7-jre-headless_7u111-2.6.7-0ubuntu0.14.04.3_amd64.deb; echo 0',
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

