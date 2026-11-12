select
    movie_id
    ,title
    ,director
    ,date_part('year', release_date) as release_year
    ,us_dvd_sales
from {{ ref('stg_movies') }}
order by us_dvd_sales desc
limit 100

