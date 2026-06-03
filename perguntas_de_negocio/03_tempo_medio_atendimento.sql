SELECT
    categoria,
    COUNT(*) AS quantidade,
    ROUND(AVG((JULIANDAY(data_fechamento) - JULIANDAY(data_abertura)) * 24), 1) AS tempo_medio_horas
FROM atendimentos
WHERE status_ticket != 'aberto'
GROUP BY categoria
ORDER BY quantidade DESC
