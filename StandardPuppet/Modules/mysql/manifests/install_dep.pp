class mysql::install_dep{

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

