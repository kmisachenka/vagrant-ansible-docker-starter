VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.ssh.insert_key = false

    config.vm.box = "ubuntu/trusty64"
    config.vm.provider "virtualbox" do |v|
        v.memory = 2048
    end

    config.vm.define :dev do |dev|
        dev.vm.network "private_network", ip: "192.168.10.10"
        dev.vm.provision :shell, path: "vagrant/install_ansible.sh"
        dev.vm.provision :shell,
            inline: 'PYTHONUNBUFFERED=1 ansible-playbook \
                /vagrant/ansible/dev.yml -c local'
        end

        if Vagrant.has_plugin?("vagrant-cachier")
            config.cache.scope = :box
        end

end