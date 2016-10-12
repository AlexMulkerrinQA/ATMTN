class mysql::install_dep{

	#exec { 'install_dependencies':
	#	cwd => '/opt',
	#	provider => shell,
	#	command => 'sudo apt-get -fy install',
	#	notify => [Exec['install_libaio1'],Exec['install_libmecab2']],
	#	refreshonly => true,
	#}	
	exec { 'install_libaio1':
		provider => shell,
		command => 'sudo apt-get install libaio1',
		refreshonly => true,
		
	}
	exec { 'install_libmecab2':
		provider => shell,
		command => 'sudo apt-get install libmecab2',
		refreshonly => true,
		
	}
	
}

