#!/bin/bash

DataHoje=$(date +%d%m%Y)
BackupMapa="Mapa_Clientes_Sodexo_${DataHoje}_backup"

# Realiza a leitura do EC
read -p "Informe o EC (código de afiliado com 9 dígitos): " EcSodexo

# Procura o EC e informa a caixa postal (ID associado)
CaixaPostal=$(grep "^$EcSodexo" /home/skyline/scripts/sodexho/Mapa_Clientes_Sodexo | awk '{print $2}')

read -p "A caixa postal cadastrada no mapa eh "$CaixaPostal", deseja realizar a troca? [S/N]: " ConfirmaTroca

# Criacao de backup
cp  -pv Mapa_Clientes_Sodexo BackupMapa
echo "Backup criado! -> $BackupMapa"



