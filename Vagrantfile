Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box = "koencreve"
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"
  config.vm.provision "shell", path:"provision.sh"
end
