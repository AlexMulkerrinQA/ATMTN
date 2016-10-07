class maven
{
	exec {'maven install':
	provider => shell,
    command         => '/vagrant/Modules/maven/files/maven_installer.sh',
    onlyif          => "test ! -f /opt/maven.tar.gz",
    path            => ['/usr/bin','/usr/sbin','/bin','/sbin'],
  }

}

