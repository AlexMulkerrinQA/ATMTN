class mysql::install_dep{

	exec { 'install_dependencies':
		provider => shell,
		command => 'sudo apt-get -fy install',
		require => Mysql::File['/opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar'],
	}	
	exec { 'install_libaio1':
		provider => shell,
		command => 'sudo apt-get install libaio1',
		require => Exec['install_dependencies'],
	}
	exec { 'install_libmecab2':
		provider => shell,
		command => 'sudo apt-get install libmecab2',
		require => Exec['install_dependencies'],
	}
	
}

