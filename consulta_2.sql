USE hospital_db;

-- 2. Média do valor de consulta por especialidade (ligadas à Cardiologia)
SELECT m.especialidade,
       ROUND(AVG(c.valor_consulta),2) AS media_valor_consulta
FROM consultas c
JOIN medicos m ON m.id_medico = c.id_medico
WHERE m.especialidade LIKE '%Cardio%'
GROUP BY m.especialidade;
