#!/bin/bash

acho "Criando criação dos diretórios..."

mkdir /ven /sec /adm /publico

echo "Diretórios publico, ven, sec e admin criados com sucesso!"

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos GRP_ADM - GRP_VEN - GRP_SEC criados!"

useradd carlos -c "Carlos Mota" -m -G GRP_ADM -p $(openssl passwd -6 123mudar)
useradd maria -c "Maria Silva" -m -G GRP_ADM -p $(openssl passwd -6 123mudar)
useradd joao -c "João Roberto" -m -G GRP_ADM -p $(openssl passwd -6 123mudar)

chown root:GRP_ADM /adm
chmod 770 /adm

echo "Usuários Carlos - Maria - João ADM's criados!"

useradd debora -c "Debora Deb" -m -G GRP_VEN -p $(openssl passwd -6 123mudar)
useradd sebastiana -c "Sebastiana Sil" -m -G GRP_VEN -p $(openssl passwd -6 123mudar)
useradd roberto -c "Roberto Marinho" -m -G GRP_VEN -p $(openssl passwd -6 123mudar)

chown root:GRP_VEN /ven
chmod 770 /ven

echo "Usuários Debora - Sebastiana - Roberto VEN criados!"

useradd josefina -c "Josefina Josi" -m -G GRP_SEC -p $(openssl passwd -6 123mudar)
useradd amanda -c "Amanda Ama" -m -G GRP_SEC -p $(openssl passwd -6 123mudar)
useradd rogerio -c "Rogerio Doido" -m -G GRP_SEC -p $(openssl passwd -6 123mudar)

chown root:GRP_SEC /sec
chmod 770 /sec
chmod 777 /publico

echo "Usuários Josefina - Amanda - Rogerio SEC criados!"
