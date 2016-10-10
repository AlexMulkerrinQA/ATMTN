class nexus 
{
	exec 
	{'install':
		provider => shell,
		command         => '/vagrant/Modules/nexus/files/nexus_installer.sh',
		onlyif          => "test ! -e /opt/nexus-3.0.2-02",
	}
}