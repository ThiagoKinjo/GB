LOAD DATA OVERWRITE -- Carrega dados na tabela
  GB.raw_hierarquia_comercial (grp_comercial STRING,
    cnpj_distribuidor STRING,
    regiao_escritorio_vendas STRING,
    cd_faturamento STRING,
    estado_faturamento STRING,
    head_comercial STRING,
    gerente STRING,
    executivo STRING,
    canal STRING)
-- Define o formato do arquivo como CSV e o caminho do arquivo no Cloud Storage
FROM FILES ( format = 'CSV',
    uris = ['gs://thiago_dados/teste vaga Analista V0 -  hierarquia_comercial.csv']);
