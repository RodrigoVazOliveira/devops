#!/bin/bash
echo 'Limpando as maquinas'
vagrant destroy -f
echo 'Reconstruindo maquinas do 0'
vagrant up
echo 'Reconstruindo autenticacao de SSH nas maquinas'
echo '' > ~/.ssh/known_hosts
ssh -i .vagrant/machines/wordpress/virtualbox/private_key vagrant@192.168.56.8
printf yes
ssh -i .vagrant/machines/database/virtualbox/private_key vagrant@192.168.56.9;
printf yes
echo 'Executando provisionamento'
ansible-playbook -i hosts provisioning.yml