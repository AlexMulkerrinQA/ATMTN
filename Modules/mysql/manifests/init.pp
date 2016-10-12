class mysql{
	contain mysql::install_dep
	contain mysql::install_dpkg
	
	file { '/opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar':
		source => "/vagrant/IgnoredBinaryFiles/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar",
		source_permissions => 'use_when_creating',
		notify => [Exec['install_libmecab2'],Exec['install_libaio1']],
		replace => false,
		}
	
	
	exec { 'unpack_file':
		cwd => '/opt',
		provider => shell,
		command => 'sudo tar -xvf mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar',
		notify => Exec['install_common'],
		creates => ['/opt/mysql-common_5.7.15-1ubuntu14.04_amd64.deb','/opt/mysql-community-client_5.7.15-1ubuntu14.04_amd64.deb','/opt/mysql-client_5.7.15-1ubuntu14.04_amd64.deb','/opt/mysql-community-server_5.7.15-1ubuntu14.04_amd64.deb','/opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb','/opt/libmysqlclient20_5.7.15-1ubuntu14.04_amd64.deb']
	}
	
}
