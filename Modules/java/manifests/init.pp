class java 
{
	exec 
	{'command when file not exists':
		provider => shell,
		command         => '/vagrant/Modules/java/files/java_installer.sh',
		onlyif          => "test ! -f /opt/java.tar.gz",
	}
}