# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = "ubuntu/trusty64"

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Use Chef Solo to provision our virtual machine
  config.vm.provision :chef_solo do |chef|
    #chef.cookbooks_path = ["cookbooks", "site-cookbooks"]
		chef.custom_config_path = "Vagrantfile.chef"
    chef.add_recipe "apt"
    chef.add_recipe "ruby_build"
    #chef.add_recipe "rbenv::user"
    #chef.add_recipe "rbenv::vagrant"
    chef.add_recipe 'rvm::user'
    chef.add_recipe 'rvm::vagrant'
    chef.add_recipe "vim"
    chef.add_recipe 'postgresql::server'
    chef.add_recipe 'postgresql::client'
		chef.add_recipe 'heroku-toolbelt'
    chef.add_recipe "nodejs"


    # Install Ruby and Bundler
    chef.json = {
		  :postgresql => {
        :password => {
          :postgres => "password"
        },
        :pg_hba => [
          { :type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'trust' },
          { :type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'trust' },
          { :type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'trust' }
        ]
      },
      
      :rvm      => {
        :user_installs => [
          {
            :user   => "vagrant",
            :rubies => [
              "2.0.0-p247"
            ],
            :default_ruby => "2.0.0-p247",
            :global_gems => [{ :name => 'bundler'}]
          }
        ],     
      },
      
    }
  end
end