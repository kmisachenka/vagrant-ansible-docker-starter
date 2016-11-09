# Project starter for [Vagrant](https://www.vagrantup.com/) , [Ansibe](https://www.ansible.com/) , [Docker](https://www.docker.com/), etc.

You can get an `ubuntu/trusty` or `centos/7` VM with following installed applications:
* [Ansible](https://www.ansible.com/)
* [Docker](https://www.docker.com/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Node.js](https://nodejs.org/)
* [Zsh](http://zsh.sourceforge.net/) ( [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) )

## How to use

1. Setup one of [Vangrant providers](https://www.vagrantup.com/docs/providers/) ([VirtualBox](https://www.virtualbox.org/) by default)
2. Install [Vagrant](https://www.vagrantup.com/downloads.html) on your host machine
3. Install `vagrant-hostmanager` plugin (`vagrant plugin install vagrant-hostmanager`)
4. Execute `vagrant up`
5. Wait a couple of more minutes. 

VM will be downloaded and booted. Ansible will be installed into your VM then it install all of applications from the list above

Then you can access to your application/project/something via URL/SSH `dev.local` or IP `192.168.10.10`

Feel free to modify any [settings](https://github.com/kmisachenka/vagrant-ansible-docker-starter/blob/master/Vagrantfile) of your future VM 

## VM tech info (by default)

* OS: `Ubuntu 14.04.5 LTS (Trusty Tahr)`
* GUI: `False`
* RAM: `2GB`
* URL: `dev.local`
* IP: `192.168.10.10`
* User: `vagrant`
* Password: `vagrant`

## License
[MIT](https://github.com/kmisachenka/vagrant-ansible-docker-starter/blob/master/LICENSE)