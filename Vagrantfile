Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.4"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network "private_network", ip: "192.168.44.10"
  config.vm.provision :shell, path: File.join(__dir__, "./config/setup/server.sh")
  config.vm.provision :shell, path: File.join(__dir__, "./config/setup/ruby.sh"), privileged: false
  config.vm.synced_folder "./", "/var/share/railsgirls"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end
end
