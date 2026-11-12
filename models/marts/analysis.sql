select 
    title,
    imdb_rating,
    production_budget,
    worldwide_gross,
    worldwide_gross-production_budget as profit
from {{ ref('stg_movies') }}
where worldwide_gross>0
order by imdb_rating desc, profit desc
limit 20
