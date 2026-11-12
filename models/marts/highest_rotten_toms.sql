select
    title
    , movie_id
    , rotten_tomatoes_rating
from {{ ref('stg_movies') }}
where rotten_tomatoes_rating = 100