class mysql{
	contain mysql::install_dep
	contain mysql::install_dpkg
	
	file { '/opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar':
		source => "file:/vagrant/IgnoredBinaryFiles/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar",
		source_permissions => 'use_when_creating',
		notify => Exec['install_dependencies'],
		}
	
	
	exec { 'unpack_file':
		cwd => '/opt',
		provider => shell,
		command => 'tar -xvf mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar',
		notify => Exec['install_common'],
	}
	
}
