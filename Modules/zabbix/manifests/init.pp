class zabbix {

	file { '/opt/zabbix.tar.gz':
		ensure	=> present,
		source	=> '/vagrant/IgnoredBinaryFiles/zabbix.tar.gz',
		before	=> Exec['addGroup'],
	}
	
	exec { 'addGroup':
		provider	=> shell,
		cwd			=> '/opt/',
		command		=> 'sudo groupadd zabbix',
		before		=> Exec['addUser'],
	}
	
	exec { 'addUser':
		provider	=> shell,
		cwd			=> '/opt/',
		command		=> 'sudo useradd -g zabbix zabbix',
		before		=> Exec['extractZabbix'],
	}
	
	exec { 'extractZabbix':
		provider	=> shell,
		cwd			=> '/opt/',
		command		=> 'sudo tar -zxvf zabbix.tar.gz',
	}
	
	file { '/bin/zabbix_get':
		ensure		=> present,
		source		=> '/opt/bin/zabbix_get',
		require		=> Exec['extractZabbix'],
		before		=> Exec['startZabbix'],
	}
	
	file { '/bin/zabbix_sender':
		ensure		=> present,
		source		=> '/opt/bin/zabbix_sender',
		require		=> Exec['extractZabbix'],
		before		=> Exec['startZabbix'],
	}
	
	file { '/sbin/zabbix_agentd':
		ensure		=> present,
		source		=> '/opt/sbin/zabbix_agentd',
		require		=> Exec['extractZabbix'],
		before		=> Exec['startZabbix'],
	}
	
	file { '/usr/local/etc/zabbix_agentd.conf':
		ensure		=> present,
		source		=> '/opt/conf/zabbix_agentd.conf',
		require		=> Exec['extractZabbix'],
		before		=> Exec['startZabbix'],
	}
	
	exec { 'startZabbix':
		provider	=> shell,
		cwd			=> '/sbin/',
		command		=> 'zabbix_agentd',
	}
}