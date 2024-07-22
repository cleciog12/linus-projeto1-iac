echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
G

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogeri -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
