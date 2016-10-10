class mysql::install_dpkg{

$DEBIAN_FRONTEND='noninteractive'

exec { 'install_common':
		provider => shell,
		command => 'sudo dpkg -i mysql-common_5.7.15-1ubuntu14.04_amd64.deb',
		require => Mysql::Exec['unpack_file'],
		}
exec { 'install_comm_client':
		provider => shell,
		command => 'sudo dpkg -i mysql-community-client_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_common'],
		}
exec { 'install_client':
		provider => shell,
		command => 'sudo dpkg -i mysql-client_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_client'],
		}
exec { 'pre_comm_server':
		provider => shell,		
		command => 'sudo $DEBIAN_FRONTEND dpkg-preconfigure mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_client'],		
		}
exec { 'install_comm_server':
		provider => shell,
		command => 'sudo dpkg -i mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['pre_comm_server'],
		}
exec {'install_server':
		provider => shell,
		command => 'sudo dpkg -i mysql-server_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_comm_server'],
		}
exec {'install_lib':
		provider => shell,
		command => 'sudo dpkg -i libmysqlclient20_5.7.15-1ubuntu14.04_amd64.deb',
		require => Exec['install_server'],
		}	
}



