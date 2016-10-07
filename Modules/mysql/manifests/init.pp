class mysql{
	
	exec { 'install_mysql_when_not_there':
		provider => shell,
		command => '/vagrant/Modules/mysql/files/mysql_installer.sh',
		onlyif => "test ! -f /opt/mysql-server_5.7.15-1ubuntu14.04_amd64.deb-bundle.tar",
	}	

}
