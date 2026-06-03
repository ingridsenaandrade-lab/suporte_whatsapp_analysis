SELECT
    atendimentos.categoria,
    ROUND(AVG(feedbacks.nota), 1) AS nota_media
FROM atendimentos
LEFT JOIN feedbacks ON atendimentos.id_chamado = feedbacks.id_chamado
GROUP BY atendimentos.categoria
ORDER BY nota_media DESC