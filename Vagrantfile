VAGRANTFILE_API_VERSION = '2'

VM_BOX = 'ubuntu/trusty64'
VM_HOSTNAME = 'local.dev'
VM_IP = '192.168.10.10'
VM_MEMORY = 2048

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    if Vagrant.has_plugin?('vagrant-hostmanager')
        config.hostmanager.enabled = true
        config.hostmanager.manage_host = true
        config.hostmanager.manage_guest = true
    end

    config.ssh.insert_key = false

    config.vm.box = VM_BOX
    config.vm.provider 'virtualbox' do |v|
        v.memory = VM_MEMORY
    end

    config.vm.define :dev do |dev|

        dev.vm.hostname = VM_HOSTNAME
        dev.vm.network 'private_network', ip: VM_IP
        dev.vm.provision :shell, path: 'vagrant/install_ansible.sh'
        dev.vm.provision :shell,
            inline: 'PYTHONUNBUFFERED=1 ansible-playbook \
                /vagrant/ansible/dev.yml -c local'
        end

end