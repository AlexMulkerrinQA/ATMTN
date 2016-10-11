class nexus 
{
	#exec 
	#{'install':
	#	provider => shell,
	#	command         => '/vagrant/Modules/nexus/files/nexus_installer.sh',
	#	onlyif          => "test ! -e /opt/nexus-3.0.2-02",
	#}
	
	exec 
	{'begin install':
		provider => shell,
		onlyif  => "test ! -e /opt/nexus-3.0.2-02",
		command => 'sudo cp /vagrant/IgnoredBinaryFiles/nexus-3.0.2-02-unix.tar.gz /opt/nexus-3.0.2-02-unix.tar.gz',
		notify => Exec['extract tar'],
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