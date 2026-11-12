SELECT
    title
    ,director
    ,release_date
    ,rotten_tomatoes_rating
FROM {{ ref('stg_movies') }}
WHERE major_genres = 'Horror'
ORDER BY rotten_tomatoes_rating DESC
LIMIT 1