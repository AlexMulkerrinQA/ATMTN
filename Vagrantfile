Vagrant.configure("2") do |config|
	config.vm.boot_timeout = 400
	config.vm.synced_folder "shared", "/tmp/shared"
		
	config.vm.define "master" do |master|
		master.vm.hostname = "alex.master.qac.local"
		master.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		master.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.23"
		master.vm.provision :shell, path: "bootstrap_master.sh"
		master.vm.provider :virtualbox do |masterVM|
			masterVM.gui = false
			masterVM.name = "master"
			masterVM.memory = 4096
			masterVM.cpus = 2
		end
	end
	
	config.vm.define "minion1" do |agent|
		agent.vm.hostname = "alex.minion1.qac.local"
		agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.22"
		agent.vm.provision :shell, path: "bootstrap_minion.sh"
		agent.vm.provider :virtualbox do |agentVM|
			agentVM.gui = false
			agentVM.name = "minion1"
			agentVM.memory = 4096
			agentVM.cpus = 2
		end
	end
	
	config.vm.define "minion2" do |agent2|
		agent2.vm.hostname = "alex.minion2.qac.local"
		agent2.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		agent2.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.22"
		agent2.vm.provision :shell, path: "bootstrap_minion.sh"
		agent2.vm.provider :virtualbox do |agentVM|
			agentVM.gui = false
			agentVM.name = "minion2"
			agentVM.memory = 4096
			agentVM.cpus = 2
		end
	end
	
	
	
end