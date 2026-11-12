USE hospital_db;

-- 9. Medicamentos prescritos por médico em consultas "Realizada"
SELECT m.nome_medico,
       COUNT(pr.id_prescricao) AS total_itens_prescritos
FROM prescricoes pr
JOIN consultas c ON c.id_consulta = pr.id_consulta
JOIN medicos m ON m.id_medico = c.id_medico
WHERE c.status_consulta = 'Realizada'
GROUP BY m.nome_medico
ORDER BY total_itens_prescritos DESC;