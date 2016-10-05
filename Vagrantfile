Vagrant.configure("2") do |config|
	config.vm.boot_timeout = 400
	config.vm.synced_folder "shared", "/tmp/shared"
		
	config.vm.define "swarmlord" do |swarmlord|
		swarmlord.vm.hostname = "swarmlord.qac.local"
		swarmlord.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		swarmlord.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.25"
		# swarmlord.vm.provision :shell, path: "bootstrap_master.sh"
		swarmlord.vm.provider :virtualbox do |masterVM|
			masterVM.gui = false
			masterVM.name = "swarmlord"
			masterVM.memory = 4096
			masterVM.cpus = 2
		end
	end
	
	config.vm.define "agent2" do |agent2|
		 agent.vm.hostname = "agent2.qac.local"
		 agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		 agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.31"
		# agent.vm.provision :shell, path: "bootstrap_minion.sh"
		 agent.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "agent2"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		 end
	end
	
	config.vm.define "secretagent360noscope" do |secretagent360noscope|
		secretagent360noscope.vm.hostname = "secretagent360noscope.qac.local"
		secretagent360noscope.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		secretagent360noscope.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.29"
		# agent2.vm.provision :shell, path: "bootstrap_minion.sh"
		secretagent360noscope.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "minion2"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		end
	end
	
	
	config.vm.define "agent2" do |agent2|
		 #agent.vm.hostname = "agent2.qac.local"
		 #agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		 #agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.31"
		# agent.vm.provision :shell, path: "bootstrap_minion.sh"
		 #agent.vm.provider :virtualbox do |agentVM|
			 #agentVM.gui = false
			 #agentVM.name = "agent2"
			 #agentVM.memory = 4096
			 #agentVM.cpus = 2
		 end
	end


	config.vm.define "agent2" do |agent2|
		# agent.vm.hostname = "agent2.qac.local"
		# agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		 #agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.31"
		# agent.vm.provision :shell, path: "bootstrap_minion.sh"
		# agent.vm.provider :virtualbox do |agentVM|
			 #agentVM.gui = false
			 #agentVM.name = "agent2"
			 #agentVM.memory = 4096
			 #agentVM.cpus = 2
		 end
	end
end