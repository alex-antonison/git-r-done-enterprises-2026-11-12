SELECT
    director AS director_name,
    SUM(worldwide_gross) AS total_revenue
FROM {{ ref('stg_movies') }}
GROUP BY 1