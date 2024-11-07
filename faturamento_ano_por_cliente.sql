SELECT
  LEFT(mes_fatura, 4) as ano, -- Extrai os primeiros 4 caracteres de 'mes_fatura' para obter o ano
  grp_comercial,
  SUM(total_valor_faturado) AS faturamento_mensal -- Soma o total de faturamento por grupo comercial e ano
FROM
  GB.trusted_consolidado_faturamento
GROUP BY
  grp_comercial,
  ano
ORDER BY
  ano,
  grp_comercial;
