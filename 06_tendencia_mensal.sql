SELECT
    STRFTIME('%Y-%m', data_abertura) AS mes,
    COUNT(*) AS quantidade
FROM atendimentos
GROUP BY mes
ORDER BY mes