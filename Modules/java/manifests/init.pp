class java 
{
	exec 
	{ 'extract_editor_script':
		provider => shell,
		command => '/vagrant/Modules/java/files/java_installer.sh',
	}
}