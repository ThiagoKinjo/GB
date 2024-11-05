LOAD DATA OVERWRITE GB.raw_faturamento
(dt_fatura STRING,grp_comercial STRING, cnpj_distribuidor STRING,cnpj_cliente STRING,ean_sku STRING, cod_cfop STRING, cod_vendedor STRING,vlr_comissao_vendedor STRING,valor STRING, QTD STRING)
FROM FILES (
  format = 'CSV',
  uris = ['gs://thiago_dados/teste vaga Analista V0 - faturamento_db.csv']);
