USE hospital_db;

-- 10. Valor total e média de consultas por paciente (nome começa com "M")
SELECT p.nome_paciente,
       SUM(c.valor_consulta) AS total_gasto,
       ROUND(AVG(c.valor_consulta),2) AS media_gasto
FROM consultas c
JOIN pacientes p ON p.id_paciente = c.id_paciente
WHERE p.nome_paciente LIKE 'M%'
GROUP BY p.nome_paciente;