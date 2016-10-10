class bamboo {
	
	file { '/opt/atlassian-bamboo-5.13.2.tar.gz':
		ensure	=> present,
		source	=> '/vagrant/IgnoredBinaryFiles/atlassian-bamboo-5.13.2.tar.gz',
		before	=> Exec['extractBamboo'],
	}
	
	exec { 'extractBamboo':
		provider	=> shell,
		onlyif		=> "test ! -d /opt/atlassian-bamboo-5.13.2",
		cwd			=> '/opt/',
		command		=> 'sudo tar -zxvf atlassian-bamboo-5.13.2.tar.gz',
		before		=> Exec['editHomeDirectory'],
	}
	
	exec { 'editHomeDirectory':
		provider	=> shell,
		onlyif		=> "test ! -d /opt/atlassian-bamboo-5.13.2",
		command		=> 'sudo sed -i "1ibamboo.home=C:/Desktop" /opt/atlassian-bamboo-5.13.2/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties',
		before		=> Exec['startBamboo'],
	}
	
	exec { 'startBamboo':
		provider	=> shell,
		onlyif		=> ["test -d /opt/jdk1.8.0_45","test ! -d /opt/atlassian-bamboo-5.13.2"],
		cwd			=> '/opt/atlassian-bamboo-5.13.2',
		command		=> 'sudo bin/start-bamboo.sh'
	}
}
