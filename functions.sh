#!/bin/bash

#Função para criar os cabeçalhos
headers() {

echo "nomeParlamentar,\
cpf,\
idDeputado,\
numeroCarteiraParlamentar,\
legislatura,\
siglaUF,\
siglaPartido,\
codigoLegislatura,\
numeroSubCota,\
descricao,\
numeroEspecificacaoSubCota,\
descricaoEspecificacao,\
fornecedor,\
cnpjCPF,\
numero,\
tipoDocumento,\
dataEmissao,\
valorDocumento,\
valorGlosa,\
valorLiquido,\
mes,\
ano,\
parcela,\
passageiro,\
trecho,\
lote,\
ressarcimento,\
restituicao,\
numeroDeputadoID,\
idDocumento,\
urlDocumento" > data.csv

}

# Função que faz o parsing do xml para o csv
data_to_csv() {
	
grep -e \<nomeParlamentar\> \
-e \<cpf\> \
-e \<idDeputado\> \
-e \<numeroCarteiraParlamentar\> \
-e \<legislatura\> \
-e \<siglaUF\> \
-e \<siglaPartido\> \
-e \<codigoLegislatura\> \
-e \<numeroSubCota\> \
-e \<descricao\> \
-e \<numeroEspecificacaoSubCota\> \
-e \<descricaoEspecificacao\> \
-e \<fornecedor\> \
-e \<cnpjCPF\> \
-e \<numero\> \
-e \<tipoDocumento\> \
-e \<dataEmissao\> \
-e \<valorDocumento\> \
-e \<valorGlosa\> \
-e \<valorLiquido\> \
-e \<mes\> \
-e \<ano\> \
-e \<parcela\> \
-e \<passageiro\> \
-e \<trecho\> \
-e \<lote\> \
-e \<ressarcimento\> \
-e \<restituicao\> \
-e \<numeroDeputadoID\> \
-e \<idDocumento\> \
-e \<urlDocumento\> $1 | \
sed "s/[<,\t\{4\}][^>]*>//g" | \
paste -d "," - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - >> data.csv

}