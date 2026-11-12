USE hospital_db;
 
-- 1. Faturamento total de consultas por convênio ("Saúde" no nome)
SELECT p.convenio,
       SUM(c.valor_consulta) AS faturamento_total
FROM consultas c
JOIN pacientes p ON p.id_paciente = c.id_paciente
WHERE p.convenio LIKE '%Saúde%'
GROUP BY p.convenio;