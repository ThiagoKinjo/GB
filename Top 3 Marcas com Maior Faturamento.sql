SELECT
  LEFT(mes_fatura, 4) AS ano, -- Extrai os primeiros 4 caracteres de 'mes_fatura' para obter o ano
  grp_comercial,
  marca,
  SUM(total_valor_faturado) AS faturamento_mensal -- Soma o faturamento mensal agrupado por ano, grupo comercial e marca
FROM
  GB.trusted_consolidado_faturamento
WHERE
  LEFT(mes_fatura, 4) = '2024' -- Filtra os dados para o ano de 2024
GROUP BY
  grp_comercial,
  ano,
  marca
QUALIFY
  ROW_NUMBER() OVER (PARTITION BY grp_comercial ORDER BY faturamento_mensal DESC) <= 4 -- Utiliza a função ROW_NUMBER para selecionar os 4 maiores faturamentos mensais por grupo comercial
ORDER BY
  grp_comercial,
  faturamento_mensal DESC;
