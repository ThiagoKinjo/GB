-- Criação da tabela staging_faturamento_distribuidor
CREATE OR REPLACE TABLE GB.staging_faturamento_distribuidor AS
SELECT
    dt_fatura,
    CAST(valor AS FLOAT64) AS vlr_total_nf, -- Converte o valor da fatura para o tipo FLOAT64
    qtd AS qtd_faturada,
    CAST(cnpj_distribuidor AS STRING) AS cnpj_distribuidor, -- Converte o CNPJ do distribuidor para o tipo STRING
    CAST(ean_sku AS INTEGER) AS cod_ean, -- Converte o código EAN do SKU para o tipo INTEGER
    NULL AS status_nf, -- Define o status da nota fiscal como NULL
    grp_comercial
FROM
    GB.raw_faturamento;
