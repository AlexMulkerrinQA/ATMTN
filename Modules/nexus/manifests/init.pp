class nexus 
{
	exec 
	{'install nexus':
		provider => shell,
		command         => '/vagrant/Modules/nexus/files/nexus_installer.sh',
		onlyif          => "test ! /opt/nexus-3.0.2-02",
	}
}