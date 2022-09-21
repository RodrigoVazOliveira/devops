## Comandos do ansible

1. ansible wordpress -u vagrant  --private-key .ssh/wordpress -i hosts -m shell -a 'echo hello word' -k
    a flag -k e para perguntar a senhas
