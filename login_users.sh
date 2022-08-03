#!/bin/bash

echo "Criando os usuários..."

useradd guest1 -m -c "Usuário 1" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd guest1 -e

useradd guest2 -m -c "Usuário2" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd guest2 -e 

useradd guest3 -m -c "Usuário3" -s /bin/bash -p $(openssl passwd -crypt Senha123)
passwd guest3 -e 

echo "Usuários criados com sucesso!!"
