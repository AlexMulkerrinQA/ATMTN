class nexus 
{
	exec 
	{'command when file not exists':
		provider => shell,
		command         => '/vagrant/Modules/nexus/files/nexus_installer.sh',
		#onlyif          => "test ! /opt/java.tar.gz",
	}
}