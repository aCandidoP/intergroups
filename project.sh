#!/bin/bash

echo "Criando Diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m  -s /bin/bash -p $(openssl passwd -crypt 123321) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd -crypt 123321)  -G GRP_ADM
useradd joao -m  -s /bin/bash -p $(openssl passwd -crypt 123321)  -G GRP_ADM

useradd debora  -m -s /bin/bash -p $(openssl passwd -crypt 123321) -G GRP_VEN
useradd sebastiana -m  -s /bin/bash -p $(openssl passwd -crypt 123321) -G GRP_VEN
useradd roberto -m  -s /bin/bash -p $(openssl passwd -crypt 123321)  -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123321) -G GRP_SEC
useradd amanda -m  -s /bin/bash -p $(openssl passwd -crypt 123321)  -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123321) -G GRP_SEC

echo "Dando permisao total a todos na pasta publico"

chmod 777 /publico

echo "Atribuindo os diretórios as devidos grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Setando permissões nos diretórios criados"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "FIM DA EXECUÇÃO DO SCRIPT"
