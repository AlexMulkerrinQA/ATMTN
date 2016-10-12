class mysql::install_dpkg{
$noninter="DEBIAN_FRONTEND='noninteractive'"

exec { 'install_common':
		provider => shell,
		command => 'sudo dpkg -i /opt/mysql-common_5.7.15-1ubuntu14.04_amd64.deb',
		refreshonly => true,
		} ~>
exec { 'install_comm_client':
		provider => shell,
		command => 'sudo dpkg -i /opt/mysql-community-client_5.7.15-1ubuntu14.04_amd64.deb',
		refreshonly => true,
		} ~>
exec { 'install_client':
		provider => shell,
		command => 'sudo dpkg -i /opt/mysql-client_5.7.15-1ubuntu14.04_amd64.deb',
		refreshonly => true,
		} ~>
exec { 'pre_comm_server':
		provider => shell,
		command => "sudo ${noninter} dpkg-preconfigure /opt/mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb",
		refreshonly => true,
		} ~>
exec { 'install_comm_server':
		provider => shell,
		command => 'sudo dpkg -i /opt/mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb',
		refreshonly => true,
		} ~>
exec {'install_server':		
		provider => shell,
		command => 'sudo dpkg -i /opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb',
		refreshonly => true,
		} ~>
exec {'install_lib':		
		provider => shell,
		command => 'sudo dpkg -i /opt/libmysqlclient20_5.7.15-1ubuntu14.04_amd64.deb',
		refreshonly => true,
		}
}



