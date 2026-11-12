USE hospital_db;

-- 5. Soma de diárias por paciente com sobrenome "Silva"
SELECT p.nome_paciente,
       SUM(i.valor_diaria) AS total_diarias
FROM internacoes i
JOIN pacientes p ON p.id_paciente = i.id_paciente
WHERE p.nome_paciente LIKE '% Silva'
GROUP BY p.nome_paciente;