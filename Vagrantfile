# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.provision :shell, path: "provision_ubuntu.sh"
  end

  config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = `sysctl -n hw.physicalcpu`.strip.to_i
  end
end
