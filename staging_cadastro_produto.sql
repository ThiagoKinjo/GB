-- Cria a tabela staging com os dados da tabela raw_cadastro_produto
CREATE OR REPLACE TABLE
  GB.staging_cadastro_produto AS
SELECT
  cod_ean,
  des_marca,
  des_categoria
FROM
  GB.raw_cadastro_produto;  -- Fonte dos dados para a nova tabela staging
