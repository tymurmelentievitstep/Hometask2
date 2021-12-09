# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "centos/7"

    vm1.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

    vm1.vm.provider "virtualbox" do |vb1|
      vb1.name = "hometask2_vm1" 
      vb1.cpus = 2 
      vb1.memory = 1024
    end

    vm1.vm.provision "shell", path: "bootstrap_environment_vm1.sh"
    vm1.vm.provision "shell", path: "check_nginx_status.sh", run: "always"

  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "ubuntu/focal64"

    vm2.vm.network "forwarded_port", guest: 80, host: 8000, host_ip: "127.0.0.1"

    vm2.vm.provider "virtualbox" do |vb2|
      vb2.name = "hometask2_vm2" 
      vb2.cpus = 2 
      vb2.memory = 1024
    end

    vm2.vm.provision "shell", path: "bootstrap_environment_vm2.sh"
    vm2.vm.provision "shell", path: "check_nginx_status.sh", run: "always"

  end

  end