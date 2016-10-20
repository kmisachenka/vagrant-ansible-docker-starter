#!/bin/bash

echo "$(tput setaf 1)Installing Ansible...$(tput sgr0)"

apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y --force-yes ansible

echo "$(tput setaf 1)ansible --version$(tput sgr0)"
ansible --version
