# -*- mode: ruby -*-
# vi: set ft=ruby :

# This guide is optimized for Vagrant 1.7 and above.
Vagrant.require_version ">= 1.7.0"

Vagrant.configure("2") do |config|

#######################################
### keycloak Servers  ######################
#######################################

  # Disable the new default behavior introduced in Vagrant 1.7, to
  # ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/mitchellh/vagrant/issues/5005
  config.ssh.insert_key = false
  config.ssh.private_key_path = '~/.vagrant.d/insecure_private_key'

  config.vm.define "keycloak" do |keycloak|
    keycloak.vm.box = "bento/ubuntu-18.04"
    # keycloak.vm.box = "bento/ubuntu-16.04"
    # keycloak.vm.box = "bento/debian-9"
    # keycloak.vm.box = "bento/centos-7"
    # keycloak.vm.box = "bento/centos-6"
    # keycloak.vm.box = "bento/fedora-27"
    keycloak.vm.hostname = "keycloak.local"
    # keycloak.vm.network "private_network", ip: "192.168.128.100"
    keycloak.vm.network "forwarded_port", guest: 8080, host: 8080
    keycloak.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'playbook.yml'
      ansible.verbose = "v"
      ansible.host_key_checking = false
    end
  end
end
