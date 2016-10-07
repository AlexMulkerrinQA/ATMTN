class bamboo
{
	exec {'bamboo install':
	provider	=> shell,
    command	=> '/vagrant/Modules/bamboo/files/install_bamboo.sh',
    onlyif	=> "test ! -f /opt/atlassian-bamboo-5.13.2.tar.gz",
    path	=> ['/usr/bin','/usr/sbin','/bin','/sbin'],
	require	=> Package['java'],
  }

}
