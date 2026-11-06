-- Tarefa 4: identificadores dos bairros O'Hare e Loop.
-- O apóstrofo quebra a string; alternativa: name IN ('O''Hare', 'Loop').
SELECT
    neighborhood_id,
    name
FROM
    neighborhoods
WHERE
    name LIKE '%Hare' OR name LIKE 'Loop';
