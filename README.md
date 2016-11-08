# Project starter for [Vagrant](https://www.vagrantup.com/) , [Ansibe](https://www.ansible.com/) , [Docker](https://www.docker.com/), etc.

You can get an `ubuntu/trusty` VM with following installed applications:
* [Ansible](https://www.ansible.com/)
* [Docker](https://www.docker.com/)
* [Node.js](https://nodejs.org/)

## How to use

1. Setup one of [Vangrant providers](https://www.vagrantup.com/docs/providers/) ([VirtualBox](https://www.virtualbox.org/) by default)
2. Install `Vagrant` on your host machine
3. Install `vagrant-hostmanager` plugin (`vagrant plugin install vagrant-hostmanager`)
4. Execute `vagrant up`
5. Wait a couple of more minutes. 

VM will be downloaded and booted. Ansible will be installed into your VM then it install all of applications from the list above

Then you can access to your application/project/something via URL `dev.local` or IP `192.168.10.10` (Feel free to modify any settings)

## License
[MIT](https://github.com/kmisachenka/vagrant-ansible-docker-starter/blob/master/LICENSE)