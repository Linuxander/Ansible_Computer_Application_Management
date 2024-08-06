# README #

### About ###

This repository contains Ansible scripts that allow you to manage several Linux clients and servers. Ansible roles were created to ensure specific applications are present on the host computers listed in the home-playbook.yml file. The roles are organized by type to help to install roles that would most likely get used on specific hosts. 

### Prerequisites ###

Verify you have listed your ip address and host names in the provisioning systems /etc/hosts file

Verify target nodes has sshd service started/enabled

Verify provisioning systems ssh key has been copied to target nodes (ssh-copy-id)

Verify provisioning system can ssh into target nodes without using password

Verify Ansible is installed on your provisioning system

Verify you updated the /etc/ansible/hosts file with the same host names you used in /etc/hosts file

#### Example - /etc/hosts: 

	192.168.0.10	hostname1
	192.168.0.11	hostname2
	192.168.0.12	hostname3

#### Example - /etc/ansible/hosts:

	[all:vars]
	ansible_connection=ssh
	ansible_ssh_user=[admin username shared by all machines go here]
	ansible_python_interpreter=/usr/bin/python3

	[home_clients]
	hostename1
	hostname2

	[home_servers]
	hostname3

### Initiating Ansible Scripts ###

Assuming you have taken the actions above to meet the prerequisites required for this to work, you can go ahead and open a terminal, change your directory (cd command) to the root of this repository on your provisioning computer, and run the following commad:

	./start-ansible-playbook.sh

----

* Version
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)
