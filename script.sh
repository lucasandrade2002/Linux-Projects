#!/bin/bash

echo "Criando os diretórios..."
mkdir ../publico 
mkdir ../adm
mkdir ../ven
mkdir ../sec

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."
useradd carlos -m -c "Carlos pertence ao grupo ADM" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd carlos -e
useradd maria -m -c "Maria pertence ao grupo ADM" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd maria -e
useradd joao -m -c "João pertence ao grupo ADM" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd joao -e
useradd debora -m -c "Débora pertence ao grupo VEN" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd debora -e
useradd sebastiana -m -c "Sebastiana pertence ao grupo VEN" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd sebastiana -e
useradd roberto -m -c "Roberto pertence ao grupo VEN" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd roberto -e
useradd josefina -m -c "Josefina pertence ao grupo SEC" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd josefina -e
useradd amanda -m -c "Amanda pertence ao grupo SEC" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd amanda -e
useradd rogerio -m -c "Rogerio pertence ao grupo SEC" -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd rogerio -e

echo "Adicionando os usuários aos grupos..."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Configurando as permissões..."

chown root:GRP_ADM ../adm
chown root:GRP_VEN ../ven
chown root:GRP_SEC ../sec

chmod 770 ../adm
chmod 770 ../ven
chmod 770 ../sec
chmod 777 ../publico

echo "Script executado com sucesso!!"




