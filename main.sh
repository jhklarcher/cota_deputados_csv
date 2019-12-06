#!/bin/bash

# Chama o pacote de funções
source functions.sh

# Cria o diretório 'data' caso não exista
if [ ! -d "data" ] 
then
    mkdir data
fi

# Abre o diretório data
cd data

# Baixa os arquivos zip
wget http://www.camara.gov.br/cotas/AnoAtual.zip
wget http://www.camara.gov.br/cotas/AnoAnterior.zip
wget http://www.camara.gov.br/cotas/AnosAnteriores.zip

# Descompacta os arquivos zip
unzip AnoAtual.zip
unzip AnoAnterior.zip
unzip AnosAnteriores.zip

# Faz o parsing dos xml para csv
headers
data_to_csv AnoAtual.xml
data_to_csv AnoAnterior.xml
data_to_csv AnosAnteriores.xml

# Deleta os arquivos remanescentes
rm AnoAtual.zip AnoAnterior.zip AnoAtual.xml AnoAnterior.xml AnosAnteriores.zip AnosAnteriores.xml

# Volta para o diretório inicial
cd ..