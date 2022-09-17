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
8. Gerar chave SSH: ssh-keygen -t rsa
9. Para adicionar a chave na maquina do vagrant:
	- vagrant ssh # para entrar na maquina
	- cp /vagrant/sua_chave_publica . # copia para  pasta de usuario da maquina do vagrant a chave publica a ser adicionada
	- cat sua_chave_publica >> ~/.ssh/authorized_keys
	- fazer o passo 7 para testar a conexao
10. Para validar o Vagrantfile use: vagrant validate
11. Para executar o ansible deve: ansible-playbook -i hosts playbook.yml
12. Para validar o status em nivel global no vagrant: vagrant global-status 
13. Para ver status global de apenas maquinas validas: vagrant global-status --prune
14. Para visualizar o box baixados: vagrant box list
15. Para mostrar os box validos e antigos: vagrnat box list prune
16. Para remover um box: vagrant box remove nome_do_box

## Script Batch - Windows

1. cd - mudar de diretorio
2. para setar variaveis de ambiente e: set NOME_DA_VARIAVE=VALOR
3. type - imprimir um arquivo texto
4. move - mover um arquivo para outro diretorio
5. copy - copiar arquivos
6. pause - aguarda uma acao do usuario para continuar, para parar deve usar CTRL+C ou fechar o terminal
7. . - diretorio atual
8. .. - diretorio acima do diretorio atual
9. help - comando para listar todas opcoes de um determinado comando - exemplo. help cd 
10. xcopy - copiar um diretorio e seus subdiretorio (flag /E)
11. SETX - modificar uma variavel de ambiente permanentimente, deve-se usar o prompt de commando como modo administrador (use a flag /M)
12. set - modificar variavel de ambiente apenas para aquela sessao do terminal
13. mkdir - criar um diretorio
14. rmdir - remover um diretorio
15. del - apagar um arquivo
16. tree - mostrar uma arvore dos diretorio atual e seus subdiretorios
17. rename - renomea um arquivo ou pasta
18. systeminfo - exibe informacoes do sistema
19. ver - mostra versao do windows
20. title - mudar o titulo do prompt do comando
21. more - visualiza um texto em paginacao
22. exit - sair do terminal/cmd

## Observacoes:

1. O puppet e necessario instalar na maquina virtual para usar os scripts.
2. O Ansible e necessario ser instalado apenas na sua maquina




