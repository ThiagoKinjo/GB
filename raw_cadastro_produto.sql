LOAD DATA OVERWRITE -- Carrega dados na tabela
  GB.raw_cadastro_produto (cod_ean STRING,
    des_material STRING,
    des_marca STRING,
    des_categoria STRING,
    des_subcategoria STRING,
    des_familia STRING)
-- Define o formato do arquivo como CSV e o caminho do arquivo no Cloud Storage
FROM FILES ( format = 'CSV',
    uris = ['gs://thiago_dados/teste vaga Analista V0 - cadastro_produto.csv']);
