select
    title
    ,director
    ,release_date
    ,rotten_tomatoes_rating
from {{ ref('stg_movies') }}
where major_genres = 'Horror'
order by rotten_tomatoes_rating desc
limit 1
