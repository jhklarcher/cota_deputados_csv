#!/bin/bash

# Leia o README para explicações

source functions.sh

if [ ! -d "data" ] 
then
    mkdir data
fi

cd data
wget http://www.camara.gov.br/cotas/AnoAtual.zip
wget http://www.camara.gov.br/cotas/AnoAnterior.zip
#wget http://www.camara.gov.br/cotas/AnosAnteriores.zip
unzip AnoAtual.zip
unzip AnoAnterior.zip
#unzip AnosAnteriores.zip
headers
data_to_csv AnoAtual.xml
data_to_csv AnoAnterior.xml
#data_to_csv AnosAnteriores.xml
cd ..