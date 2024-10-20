SELECT
  count(lead_id) AS total_clientes,
  gender
FROM
  leads_basic_details
GROUP BY
  gender