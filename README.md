# Esse repositorio tem o intuito de armazenar as querys utilizada no teste do boticario.

As etapas da execução do processo do teste.

1. Armazenamento dos arquivos CSVs no bucket.
2. Criação das tabelas dentro do Bigquery.
3. Tabelas raw, contém os dados brutos.
4. Tabelas staging, contém os dados tratados, com os tipos dos dados modificado.
5. Tabelas trusted, a união das 3 tabelas staging com os campos nomeados.
6. Construção das queries respondendo as perguntas, gerando insight.
7. Armazenamento das queries no Github.
8. Construção dos indicadores no Looker Studio.
