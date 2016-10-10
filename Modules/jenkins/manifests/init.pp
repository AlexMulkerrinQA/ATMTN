class jenkins {

	file { '/opt/jenkins_2.1_all.deb':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/jenkins_2.1_all.deb',
		#before => Exec['installJenkins'],
	}
	exec {'installJenkins':
		provider => shell,
		command  => '/vagrant/Modules/jenkins/files/installJenkins.sh',
		#onlyif 	 => "test ! -f /opt/jenkins_2.1_all.deb",
	}
}

