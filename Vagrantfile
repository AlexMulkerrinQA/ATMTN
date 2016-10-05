Vagrant.configure("2") do |config|
	config.vm.boot_timeout = 400
	config.vm.synced_folder "shared", "/tmp/shared"
	
	#alex agent
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

	
	#dharam agent
	config.vm.define "agent1" do |agent1|
		agent1.vm.hostname = "agent1.qac.local"
		agent1.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		agent1.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.24"
		#agent1.vm.provision :shell, path: "bootstrap_agent1.sh"
		agent1.vm.provider :virtualbox do |agentVM|
			agentVM.gui = false
			agentVM.name = "agent1"
			agentVM.memory = 4096
			agentVM.cpus = 2
		end
	end
	
	# will's agent
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
	
	#tim agent
	config.vm.define "secretagent360noscope" do |secretagent360noscope|
		secretagent360noscope.vm.hostname = "secretagent360noscope.qac.local"
		secretagent360noscope.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		secretagent360noscope.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.29"
		# agent2.vm.provision :shell, path: "bootstrap_minion.sh"
		secretagent360noscope.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "secretagent360noscope"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		end
	end
	

	#alastair agent
	config.vm.define "agent007" do |agent007|
		 agent007.vm.hostname = "agent007.qac.local"
		 agent007.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		 agent007.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.31"
		 #agent.vm.provision :shell, path: "bootstrap_minion.sh"
		 agent007.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "agent007"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		 end
	end
end