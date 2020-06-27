Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.synced_folder ".", "/repo"
  config.vm.network "forwarded_port", guest: 25575, host: 25575
  config.vm.network "forwarded_port", guest: 25565, host: 25565
  config.vm.provision :shell, path: "mc-install.sh"
end
