class mysql{
	
	file { '/opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar':
		source => "file:/vagrant/IgnoredBinaryFiles/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar",
		source_permissions => 'use_when_creating',
		}
	include mysql::install_dep
	exec { 'unpack_file':
		provider => shell,
		command => 'tar -xvf mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar',
		require => Mysql::Install_dep::Exec['install_libaio1','install_libcab2'],
	}
	include mysql::install_dpkg
}
