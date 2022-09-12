# Curso de devops para iniciantes

## Vagrant
	
1. Para iniciar um maquina: vagrant up
2. Para desligar uma maquina: vagrant halt
3. Para destruir/deletar a maquina: vagrant destroy
4. Para recarregar as configuracoes da maquina: vagrant reload
5. Para acessar a maquina via ssh: vagrant ssh
6. Para visualizar a chave privada do SSH: vagrant ssh-config
7. Para se conectar a maquina usando ssh da maquina local (nao o vagrant): ssh -i <caminho da chave privada> vagrant@ip-da-maquina
	* exemplo: sh -i .vagrant/machines/default/virtualbox/private_key vagrant@192.168.1.15
