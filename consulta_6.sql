USE hospital_db;

-- 6. Contagem de prescrições por status da consulta (Dipirona ou Paracetamol)
SELECT c.status_consulta,
       COUNT(*) AS qtd_prescricoes
FROM prescricoes pr
JOIN consultas c ON c.id_consulta = pr.id_consulta
WHERE pr.medicamento LIKE '%Dipirona%'
   OR pr.medicamento LIKE '%Paracetamol%'
GROUP BY c.status_consulta;