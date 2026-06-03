SELECT
    agentes.nome,
    COUNT(*) AS total_atendimentos,
    ROUND(SUM(CASE WHEN status_ticket = 'resolvido' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS taxa_resolucao,
    ROUND(AVG(feedbacks.nota), 1) AS nota_media
FROM atendimentos
JOIN agentes ON atendimentos.id_agente = agentes.id_agente
LEFT JOIN feedbacks ON atendimentos.id_chamado = feedbacks.id_chamado
GROUP BY agentes.nome