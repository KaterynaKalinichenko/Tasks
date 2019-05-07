hosts = [
    { name: 'swarmmaster',   box: 'centos/7',	mem: 2048,	netint: 2,	ip: "172.16.29.7" },
    { name: 'jenkinsmaster', box: 'centos/7',	mem: 2048,	netint: 2,	ip: "172.16.29.8" },
    { name: 'swarmslave1',   box: 'centos/7',	mem: 2048,	netint: 2,	ip: "172.16.29.9" }
]
Vagrant.configure('2') do |config|
  hosts.each do |host|
    config.ssh.forward_agent = true
    config.ssh.forward_x11 = true
    config.vm.define host[:name] do |node|
	  node.vm.autostart:false
      node.vm.box = host[:box]
      node.vm.hostname = host[:name]
      node.vm.provider :virtualbox do |vm|
        vm.memory = host[:mem]
      end

      end
    config.vm.synced_folder '.', '/vagrant', type: 'virtualbox'
    Vagrant::Config.run do |config|
      config.vbguest.auto_update = false
      config.vbguest.no_remote = true
    end
  end
end