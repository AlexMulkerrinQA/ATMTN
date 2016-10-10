class bamboo {
	
	file { '/opt/atlassian-bamboo-5.13.2.tar.gz':
		ensure	=> present,
		source	=> '/vagrant/IgnoredBinaryFiles/atlassian-bamboo-5.13.2.tar.gz',
		before	=> Exec['extractBamboo'],
	}
	
	exec { 'extractBamboo':
		provider	=> shell,
		onlyif		=> "test ! -f /opt/atlassian-bamboo-5.13.2",
		cwd			=> '/opt/',
		command		=> 'sudo tar -zxvf atlassian-bamboo-5.13.2.tar.gz',
		before		=> Exec['editHomeDirectory'],
	}
	
	exec { 'editHomeDirectory':
		provider	=> shell,
		command		=> 'sudo sed -i "1ibamboo.home=C:/Desktop" /opt/atlassian-bamboo-5.13.2/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties',
		before		=> Exec['startBamboo'],
	}
	
	exec { 'startBamboo':
		provider	=> shell,
		cwd			=> '/opt/atlassian-bamboo-5.13.2',
		command		=> 'sudo bin/start-bamboo.sh'
		#require		=> service['java'],
	}
}
