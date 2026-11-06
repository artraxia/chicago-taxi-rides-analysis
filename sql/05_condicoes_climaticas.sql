-- Tarefa 5: classifica cada hora como 'Bad' (rain/storm) ou 'Good'.
-- Use ILIKE se houver descrições com maiúsculas.
SELECT
    ts,
    CASE
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM
    weather_records;
