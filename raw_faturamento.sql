LOAD DATA OVERWRITE -- Carrega dados na tabela
  GB.raw_faturamento (dt_fatura STRING,
    grp_comercial STRING,
    cnpj_distribuidor STRING,
    cnpj_cliente STRING,
    ean_sku STRING,
    cod_cfop STRING,
    cod_vendedor STRING,
    vlr_comissao_vendedor STRING,
    valor STRING,
    QTD STRING)
-- Define o formato do arquivo como CSV e o caminho do arquivo no Cloud Storage
FROM FILES ( format = 'CSV',
    uris = ['gs://thiago_dados/teste vaga Analista V0 - faturamento_db.csv']);
