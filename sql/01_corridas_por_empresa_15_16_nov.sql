-- Tarefa 1: corridas por empresa em 15-16/11/2017, ordem decrescente.
-- CAST remove a hora: sem ele o BETWEEN pararia em 16/11 00:00.
SELECT
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY
    cabs.company_name
ORDER BY
    trips_amount DESC;
