#!/bin/bash
echo ""
echo "Home System Admin Automation Script"
echo ""
sleep 1

read -s -p "Enter ansible user sudo password: " ansiblepw
echo ""
sleep 1

ansible-playbook home-playbook.yml --extra-vars "ansible_sudo_pass=$ansiblepw"