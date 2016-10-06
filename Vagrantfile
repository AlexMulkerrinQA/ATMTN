Vagrant.configure("2") do |config|
	config.vm.boot_timeout = 400
	config.vm.synced_folder "shared", "/tmp/shared"
	
	#alex agent
	config.vm.define "swarmlord" do |master|
		master.vm.hostname = "swarmlord.qac.local"
		master.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		master.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.25"
		# master.vm.provision :shell, path: "bootstrap_master.sh"
		master.vm.provider :virtualbox do |masterVM|
			masterVM.gui = false
			masterVM.name = "swarmlord"
			masterVM.memory = 4096
			masterVM.cpus = 2
		end
	end

	
	#dharam agent
	config.vm.define "agent1" do |agent|
		agent.vm.hostname = "agent1.qac.local"
		agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.24"
		#agent.vm.provision :shell, path: "bootstrap_agent.sh"
		agent.vm.provider :virtualbox do |agentVM|
			agentVM.gui = false
			agentVM.name = "agent1"
			agentVM.memory = 4096
			agentVM.cpus = 2
		end
	end
	
	# will's agent
	config.vm.define "agent2" do |agent|
		 agent.vm.hostname = "agent2.qac.local"
		 agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		 agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.31"
		 agent.vm.provision :shell, path: "bootstrap_agent.sh"
		 agent.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "agent2"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		 end
	end
	
	#tim agent
	config.vm.define "secretagent360noscope" do |agent|
		agent.vm.hostname = "secretagent360noscope.qac.local"
		agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.29"
		agent.vm.provision :shell, path: "bootstrap_agent.sh"
		agent.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "secretagent360noscope"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		end
	end
	

	#alastair agent
	config.vm.define "agent007" do |agent|
		 agent.vm.hostname = "agent007.qac.local"
		 agent.vm.box = "chad-thompson/ubuntu-trusty64-gui"
		 agent.vm.network :public_network, :public_network => "wlan0", ip: "192.168.1.30"
		 agent.vm.provision :shell, path: "bootstrap_agent.sh"
		 agent.vm.provider :virtualbox do |agentVM|
			 agentVM.gui = false
			 agentVM.name = "agent007"
			 agentVM.memory = 4096
			 agentVM.cpus = 2
		 end
	end


end
