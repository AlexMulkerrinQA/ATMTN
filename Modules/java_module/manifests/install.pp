class java_module::install
{
	file 
	{ '/root/setup_app_keys.sh':
	  ensure => file,
	  owner  => 'root',
	  group  => 'root',
	  mode   => '0700',
	  source => 'puppet:///modules/install.sh',
	}

	exec 
	{ 'setup_app_keys':
	  unless  => '/etc/pki/tls/private/app-foo.key',
	  command => '/root/setup_app_keys.sh',
	  user    => 'root',
	  group   => 'root',
	}
}