-- Tarefa 6: corridas Loop (50) → O'Hare (63) aos sábados, com clima e duração.
-- DATE_TRUNC('hour') encaixa o início da corrida no registro horário do clima;
-- INNER JOIN descarta corridas sem clima; EXTRACT(DOW) = 6 é sábado no PostgreSQL.
SELECT
    trips.start_ts,
    CASE
        WHEN weather_records.description LIKE '%rain%'
          OR weather_records.description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    trips.duration_seconds
FROM
    trips
    INNER JOIN weather_records ON weather_records.ts = DATE_TRUNC('hour', trips.start_ts)
WHERE
    trips.pickup_location_id = 50
    AND trips.dropoff_location_id = 63
    AND EXTRACT(DOW FROM trips.start_ts) = 6
ORDER BY
    trips.trip_id;
