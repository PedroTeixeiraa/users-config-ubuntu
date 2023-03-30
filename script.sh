#!/bin/bash

echo "Criando diretórios padrões"
mkdir publico adm ven sec

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e vincular aos devidos grupos"
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -1 -stdin <<< Abc123) -G GRP_SEC

echo "Adicionar permissões nos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec