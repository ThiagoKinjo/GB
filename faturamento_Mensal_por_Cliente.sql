SELECT
  mes_fatura,
  grp_comercial,
  SUM(total_valor_faturado) AS faturamento_mensal -- Soma o total de faturamento por grupo comercial e mês
FROM
  GB.trusted_consolidado_faturamento
GROUP BY
  grp_comercial,
  mes_fatura
ORDER BY
  mes_fatura,
  grp_comercial;
