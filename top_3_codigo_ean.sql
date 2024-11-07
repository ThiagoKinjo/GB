SELECT
    CAST(f.cod_ean AS STRING) AS cod_ean, -- Converte o código EAN de faturamento para STRING
    p.des_marca,
    p.des_categoria,
    SUM(f.vlr_total_nf) AS faturamento_total -- Calcula o faturamento total somando o valor total da nota fiscal
FROM
    GB.staging_faturamento_distribuidor AS f
JOIN
    GB.staging_cadastro_produto AS p
ON
    CAST(f.cod_ean AS STRING) = p.cod_ean -- Realiza a junção com base no código EAN convertido para STRING
GROUP BY
    cod_ean,
    p.des_marca,
    p.des_categoria
ORDER BY
    faturamento_total DESC -- Ordena os resultados em ordem decrescente
LIMIT 3;
