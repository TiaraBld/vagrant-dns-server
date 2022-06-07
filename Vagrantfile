# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "srv-dns" do |machine|
    machine.vm.hostname = "srv-dns"
    machine.vm.box = "debian/buster64"
    machine.vm.network :private_network, ip: "192.168.56.80"
    machine.vm.network :public_network, bridge: "eno1", ip: "192.168.1.7", netmask:"255.255.255.240"
    machine.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--name", "srv-dns"]
      v.customize ["modifyvm", :id, "--groups", "/S8-cloud"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
      v.customize ["modifyvm", :id, "--natdnshostresolver2", "off"]
      v.customize ["modifyvm", :id, "--natdnsproxy2", "off"]
    end
    config.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      sleep 3
      service ssh restart
    SHELL
    machine.vm.provision "shell", path: "scripts/install_sys.sh"
    machine.vm.provision "shell", path: "scripts/install_web.sh"
    machine.vm.provision "shell", path: "scripts/install_DNS.sh"
    machine.vm.provision "shell", path: "scripts/config_dns.sh"
    machine.vm.provision "shell", path: "scripts/zone_dns.sh"
    machine.vm.provision "shell", path: "scripts/config_route.sh"
  
  end
end