USE hospital_db;

-- 7. Média de valor de consultas por convênio ("Unimed") e especialidade
SELECT p.convenio,
       m.especialidade,
       ROUND(AVG(c.valor_consulta),2) AS media_valor_consulta
FROM consultas c
JOIN pacientes p ON p.id_paciente = c.id_paciente
JOIN medicos m ON m.id_medico = c.id_medico
WHERE p.convenio LIKE '%Unimed%'
GROUP BY p.convenio, m.especialidade
ORDER BY p.convenio, m.especialidade;