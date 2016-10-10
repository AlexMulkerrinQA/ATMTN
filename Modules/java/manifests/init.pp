class java {

	file { '/opt/java.tar.gz':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/java.tar.gz',
		before => Exec['installJava'],
	}
	
	exec {'installJava':
		provider => shell,
		cwd => '/opt/',
		command  => 'sudo tar -zxvf java.tar.gz',
		onlyif   => 'test ! -d /opt/jdk1.8.0_45',
		before => Exec['updateAltJava'],
	}
	
	exec {'updateAltJava':
		#refreshonly => true,
		provider => shell,
		cwd => '/opt/',
		command => 'sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100; sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100',
	}
}