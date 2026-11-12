USE hospital_db;

-- 4. Total de consultas por médico (status "Realizada" ou "Finalizada")
SELECT m.nome_medico,
       SUM(c.valor_consulta) AS total_consultas
FROM consultas c
JOIN medicos m ON m.id_medico = c.id_medico
WHERE c.status_consulta IN ('Realizada', 'Finalizada')
GROUP BY m.nome_medico
ORDER BY total_consultas DESC;