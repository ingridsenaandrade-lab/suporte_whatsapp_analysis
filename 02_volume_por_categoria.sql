SELECT
    categoria,
    COUNT(*) AS quantidade,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM atendimentos), 1) AS percentual
FROM atendimentos
GROUP BY categoria
ORDER BY quantidade DESC