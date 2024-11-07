-- Cria a tabela staging com os dados da tabela raw_hierarquia_comercial
CREATE OR REPLACE TABLE GB.staging_hierarquia_comercial AS
SELECT
    grp_comercial,
    head_comercial,
    gerente AS gerente_comercial,
    executivo AS executivo_comercial,
    canal AS des_canal
FROM
    GB.raw_hierarquia_comercial;
