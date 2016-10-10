class mysql::install_dpkg{

exec { 'install_common':
		cwd => '/opt',
		provider => shell,
		command => 'sudo dpkg -i mysql-common_5.7.15-1ubuntu14.04_amd64.deb',
		}
exec { 'install_comm_client':
		cwd => '/opt',
		provider => shell,
		command => 'sudo dpkg -i mysql-community-client_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_common'],
		}
exec { 'install_client':
		cwd => '/opt',
		provider => shell,
		command => 'sudo dpkg -i mysql-client_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_comm_client'],
		}
exec { 'pre_comm_server':
		cwd => '/opt',
		provider => shell,		
		command => "/vagrant/Modules/mysql/files/preconfigure.sh",
		require => Exec['install_client'],		
		}
exec { 'install_comm_server':
		cwd => '/opt',
		provider => shell,
		command => 'sudo dpkg -i mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['pre_comm_server'],
		}
exec {'install_server':
		cwd => '/opt',
		provider => shell,
		command => 'sudo dpkg -i mysql-server_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_comm_server'],
		}
exec {'install_lib':
		cwd => '/opt',
		provider => shell,
		command => 'sudo dpkg -i libmysqlclient20_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_server'],
		}	
}



