# Cota Parlamentar em CSV
Script em bash para baixar os gastos dos parlamentares da Câmara dos Deputados (dados da cota parlamentar) atualizados em CSV. 


## Execução do script

Basta executar o "main.sh" na linha de comando.

## Funcionamento

Esse script baixa os dados do site da [Câmara de Deputados](https://www2.camara.leg.br/transparencia/cota-para-exercicio-da-atividade-parlamentar/dados-abertos-cota-parlamentar) (compactados em zip), descompacta, obtem os dados do xml, limpa e passa para um arquivo CSV utilizando bash na linha de comando.

As funções ficam no arquivo "function.sh" e o arquivo "main.sh" executa o processo. O output é um arquivo "data.csv", no diretório "data". Os arquivos XML e ZIP ficam no diretório também, mas podem ser deletados em seguida.

As partes do código que executam as funções para os anos mais antigos estão comentadas, pois o arquivo é muito grande. Se você quiser executar essa parte é só tirar o "#". Vaiai demorar consideravelmente mais para executar o script.
