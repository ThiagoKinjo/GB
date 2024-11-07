SELECT
  DISTINCT sf.cod_ean
FROM
  GB.staging_faturamento_distribuidor sf
LEFT JOIN
  GB.staging_cadastro_produto cp
ON
  CAST(sf.cod_ean AS STRING) = cp.cod_ean -- Faz a junção entre os códigos EAN do faturamento e do cadastro de produtos
WHERE
  cp.cod_ean IS NULL; -- Filtra para retornar apenas os códigos EAN que não possuem correspondência na tabela de produtos
