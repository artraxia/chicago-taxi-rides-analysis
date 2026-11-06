-- Tarefa 2: corridas de empresas com 'Yellow' ou 'Blue' no nome, 1-7/11/2017.
-- Parênteses no OR são obrigatórios para o AND da data valer para ambos.
SELECT
    cabs.company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM
    cabs
    INNER JOIN trips ON trips.cab_id = cabs.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
    AND (cabs.company_name LIKE '%Yellow%' OR cabs.company_name LIKE '%Blue%')
GROUP BY
    cabs.company_name;
