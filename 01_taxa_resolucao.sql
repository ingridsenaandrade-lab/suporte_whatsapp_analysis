SELECT
    status_ticket,
    COUNT(*) AS quantidade,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM atendimentos), 1) AS percentual
FROM atendimentos
GROUP BY status_ticket
ORDER BY quantidade DESC