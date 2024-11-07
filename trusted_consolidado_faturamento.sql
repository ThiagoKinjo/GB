-- Criação da tabela trusted_consolidado_faturamento
CREATE OR REPLACE TABLE GB.trusted_consolidado_faturamento AS
SELECT
    FORMAT_DATE('%Y-%m', dt_fatura) AS mes_fatura, -- Formata a data da fatura para o 'ano-mês' exe: 2024-11
    sh.grp_comercial, -- Seleciona o grupo comercial da tabela de hierarquia comercial
    COALESCE(sc.des_marca, "Sem cadastro") AS marca, -- Usa COALESCE para garantir que, caso a marca não seja encontrada, seja atribuído 'Sem cadastro'
    COALESCE(sc.des_categoria, "Sem categoria") AS categoria, -- Usa COALESCE para garantir que, caso a categoria não seja encontrada, seja atribuído 'Sem categoria'
    sh.head_comercial,
    SUM(sf.vlr_total_nf) AS total_valor_faturado, -- Soma o valor total da fatura, agregando por grupo comercial e mês
    SUM(sf.qtd_faturada) AS quantidade_total_faturada, -- Soma a quantidade faturada, agregando por grupo comercial e mês
    SUM(sf.vlr_total_nf * 1.6) AS total_gmv -- Calcula o GMV (Gross Merchandise Value), multiplicando o valor total da fatura por 1.6
FROM
    GB.staging_faturamento_distribuidor sf
LEFT JOIN
    GB.staging_cadastro_produto sc ON CAST(sf.cod_ean AS STRING) = sc.cod_ean
LEFT JOIN
    GB.staging_hierarquia_comercial sh ON sf.grp_comercial = sh.grp_comercial
GROUP BY 
    mes_fatura, grp_comercial, marca, categoria, head_comercial;
