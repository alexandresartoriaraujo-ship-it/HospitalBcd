USE hospital_db;

-- 3. Valor médio das diárias por tipo de quarto ("Apartamento" ou "UTI")
SELECT q.tipo_quarto,
       ROUND(AVG(i.valor_diaria), 2) AS media_diaria
FROM internacoes i
INNER JOIN quartos q ON q.id_quarto = i.id_quarto
WHERE q.tipo_quarto LIKE '%Apartamento%'
OR q.tipo_quarto LIKE '%UTI%'
GROUP BY q.tipo_quarto;