class maven{

	Exec {
		path => ['/usr/bin','/bin','/usr/sbin']
	}
	
	file { '/opt/maven.tar.gz':
		ensure	=> present,
		source	=> '/vagrant/IgnoredBinaryFiles/maven.tar.gz',
		before	=> Exec['extractMaven'],
	}
	
	exec { 'extractMaven':
		provider	=> shell,
		onlyif		=> "test ! -d /opt/apache-maven-3.3.9/",
		cwd			=> '/opt/',
		command		=> 'sudo tar zxvf maven.tar.gz',
		before		=> Exec['installMaven'],
	}
	
	exec { 'installMaven':
		provider	=> shell,
		onlyif		=> 'test -d /opt/jdk1.8.0_45',
		command		=> 'sudo update-alternatives --install /usr/bin/mvn mvn /opt/apache-maven-3.3.9/bin/mvn 100',
		before		=> Exec['configMaven'],
	}
	
	exec { 'configMaven':
		provider	=> shell,
		command		=> 'sudo update-alternatives --config mvn',
	}
}

