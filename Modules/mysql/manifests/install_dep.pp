class mysql::install_dep{

	exec { 'install_dependencies':
		cwd => '/opt',
		provider => shell,
		command => 'sudo apt-get -fy install',
	}	
	exec { 'install_libaio1':
		cwd => '/opt',
		provider => shell,
		command => 'sudo apt-get install libaio1',
		require => Exec['install_dependencies'],
	}
	exec { 'install_libmecab2':
		cwd => '/opt',
		provider => shell,
		command => 'sudo apt-get install libmecab2',
		require => Exec['install_dependencies'],
	}
	
}

