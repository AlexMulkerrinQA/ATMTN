class maven :: install
{

file 
	{ '/root/........':
	  ensure => file,
	  owner  => 'root',
	  group => 'root',
	  mode   => '700',
	  source => 'puppet:///modules/install.sh',
	}
	
exec
{



}