class java_module($enable = true, $start = true)
{
	class{'java_installer::install':}->
	class{'java_installer::config':}->
	class{'java_installer::service':}->
	Class["java_installer"]
}