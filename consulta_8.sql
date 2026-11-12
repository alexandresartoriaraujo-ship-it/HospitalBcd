USE hospital_db;

-- 8. Média de diária de internação por convênio em quartos de UTI
SELECT p.convenio,
       ROUND(AVG(i.valor_diaria),2) AS media_diaria_uti
FROM internacoes i
JOIN pacientes p ON p.id_paciente = i.id_paciente
JOIN quartos q ON q.id_quarto = i.id_quarto
WHERE q.tipo_quarto = 'UTI'
GROUP BY p.convenio;