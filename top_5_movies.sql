select title,
imdb_rating 
from {{ ref('stg_movies') }}
order by imdb_rating desc
limit 5;