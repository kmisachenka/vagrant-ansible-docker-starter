#!/bin/bash

dpkg -l ansible > /dev/null 2>&1
INSTALLED=$?

if [ $INSTALLED == '0' ]; then
    echo "Ansible installed"
else
    echo "Installing Ansible..."
    apt-get install -y software-properties-common
    apt-add-repository ppa:ansible/ansible
    apt-get update
    apt-get install -y --force-yes ansible
fi

cp /vagrant/ansible.cfg /home/vagrant/ansible.cfg
chown vagrant:vagrant /home/vagrant/ansible.cfg

echo "ansible --version"
ansible --version
