class nexus 
{
	file { '/opt/nexus-3.0.2-02-unix.tar.gz':
		ensure => present,
		source => '/vagrant/IgnoredBinaryFiles/nexus-3.0.2-02-unix.tar.gz',
		notify => Exec['extract tar'],
		onlyif  => "test ! -e /opt/nexus-3.0.2-02",
	}
	
	exec
	{'extract tar':
		provider => shell,
		cwd => "/opt",
		command => 'sudo tar zxvf nexus-3.0.2-02-unix.tar.gz',
		refreshonly => true,
		notify => Exec['make file runnable'],
	}
	
	exec
	{'make file runnable':
		provider => shell,
		cwd => "/opt/nexus-3.0.2-02/bin",
		command => 'sudo chmod +x nexus',
		refreshonly => true,
		notify => Exec['run it in background'],
		
		
	}
	
	exec
	{'run it in background':
		provider => shell,
		cwd => "/opt/nexus-3.0.2-02/bin",
		command => 'sudo ./nexus start &',
		refreshonly => true,
	}
	
	
}